Steps for configuration:-

Prerequisites

Before we can start building the application, we'll have to do few setup tasks :

    Sign up for an OpenShift Account. It is completely free and Red Hat gives every user three free Gears on which to run your applications. At the time of this writing, the combined resources allocated for each user is 1.5 GB of memory and 3 GB of disk space.

    Install the rhc client tool on your machine. The rhc is a ruby gem so you need to have ruby 1.8.7 or above on your machine. To install rhc, just type

sudo gem install rhc

If you already have one, make sure it is the latest one. To update your rhc, execute the command shown below.

sudo gem update rhc

For additional assistance setting up the rhc command-line tool, see the following page: https://openshift.redhat.com/community/developers/rhc-client-tools-install.

    Setup your OpenShift account using rhc setup command. This command will help you create a namespace and upload your ssh keys to OpenShift server.

Step 1 : Create an application

We will start by creating an OpenShift DIY application. The name of the application will be tomcat8. The DIY cartridge type provides a sandbox to try and test unsupported things. To know more, you can read about DIY here.

$ rhc app create muletomcat diy

This will create an application container for us, called a gear, and setup all of the required SELinux policies and cgroup configuration. OpenShift will also setup a private git repository for you and clone the repository to your local system. Finally, OpenShift will propagate the DNS to outside world. The application will be accessible at http://tomcat8-domain-name.rhcloud.com/. Replace domain-name with your own unique domain name. This gear will already have Java 7 installed on it.

Step 2 : Stop the application

By default the DIY application will have a ruby server running on it. Since we will be installing Tomcat 8 we need to stop the server.

$ rhc app stop -a muletomcat
RESULT:
tomcat8 stopped

Step 3 : Delete unwanted files

The DIY folder under the Tomcat 8 folder has a couple of files which define a simple ruby web server and sample index.html file. Since we don't need them we will just delete them.

$ cd tomcat8
$ rm diy/index.html 
$ rm diy/testrubyserver.rb

For Windows users please use del instead of rm

Also, there are start and stop scripts under .openshift/action_hooks folder to start and stop the test ruby server. We will remove the start and stop scripts and replace them with new files.

$ rm .openshift/action_hooks/start 
$ rm .openshift/action_hooks/stop
$ touch .openshift/action_hooks/start
$ touch .openshift/action_hooks/stop

For Windows users, the touch command just creates a blank text file. Please do this however you feel comfortable on Windows, but please make sure they end up in the right directory.

Step 4 : Commit and push the changes

Once we have deleted the scripts and replaced them with empty files, we need to push the changes to the OpenShift application so that our changes are applied.

$ git commit -am "deleted unwanted files and replaced start and stop scripts"
$ git push

Step 5 : Copying muletomcat executables

After the build finishes, the tomcat 8 executables will be in the output/build folder. Copy the artifacts to tomcat8 folder in $OPENSHIFT_DATA_DIR.

$ cd $OPENSHIFT_DATA_DIR
$ git clone <git repo>


Now all the tomcat 8 related files are in the tomcat8 folder.

Step 8 : Modify server.xml

Now that we have built the tomcat source and copied it to the tomcat8 folder, we need to modify the server.xml file to specify the ports we want to use as well as the IP address to bind to. Because OpenShift is a multitenant environment, you will need to use the internal IP address that is provided to you. In order to find this address, run the following command:

$ env | grep OPENSHIFT_DIY_IP

Which should return something similar to as shown below.

OPENSHIFT_DIY_IP=127.8.97.129

We need to modify the server.xml file to respect this IP address as well as change the default ports that some of the services run on. The ports that are configured for other services will not work by default because OpenShift does not allow users to bind to any port below 15000 other than 8080. Because of this, we need to change the following configuration items. You can view the full working server.xml here. Just replace address value with $OPENSHIFT_DIY_IP value.

Old Connector:

<Connector port="8080" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" />

New Connector:

<Connector port="8080" protocol="HTTP/1.1"
               connectionTimeout="20000" address="127.8.97.129"
               redirectPort="8443" />

Change the shutdown port

<Server port="8005" shutdown="SHUTDOWN">

to

<Server port="15005" shutdown="SHUTDOWN" address="127.8.97.129">

And finally change the AJP 1.3 connector on port 8009 as shown below.

<Connector port="8009" protocol="AJP/1.3" redirectPort="8443"/>

to

<Connector port="15009" protocol="AJP/1.3" redirectPort="8443" address="127.8.97.129" />

Step 9: Start the Tomcat servlet container

Finally we will start the tomcat 8 servlet container by executing startup.sh file.

$ cd ../bin
$ ./startup.sh && tail -f ../logs/*

This should start Tomcat as well as make it accessible to the outside world via port 80. You are probably asking yourself how it’s available on port 80 when we specifically set it to use 8080. OpenShift actually has a proxy setup that will pass all traffic coming to your host via port 80 to a local server you have running on port 8080. This port is specified in the system environment variable OPENSHIFT_DIY_PORT.

Verify that your tomcat server is running by pointing your browser to your application at tomcat-yourNamespace.rhcloud.com. You can view a sample Apache Tomcat 8 installation at http://tomcat8-cix.rhcloud.com/. You can view examples under http://tomcat8-cix.rhcloud.com/examples/.

If you want to use the Tomcat management console, add a user to the tomcat-users.xml file located in the conf directory. For example, add the following role and user to that file deleting what is already there:

<role rolename="manager-gui"/>
<user username="tomcat" password="openshift" roles="manager-gui"/>

Step 10 : Update start and stop action hooks

Finally, we need to update the start and stop action hooks so that they start and stop the tomcat. This is required so that you can manage tomcat from rhc command line tooling. So, when you run rhc app stop -a tomcat8 , it will stop tomcat 8 and when you will run rhc app start -a tomcat8 , it will start tomcat 8. Open the start script in .openshift/action_hooks folder and add the following lines.

cd $OPENSHIFT_DATA_DIR/tomcat8/bin
./startup.sh

To stop the Apache Tomcat 8, add following lines to stop the script

cd $OPENSHIFT_DATA_DIR/tomcat8/bin
./shutdown.sh

Lastly, commit the code and push it to application gear.

$ git commit -am "added start and stop commands"
$ git push