package com.test;

import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;

public class HttpRequesttoModuleString extends AbstractMessageTransformer {

	@Override
	public Object transformMessage(MuleMessage message, String outputEncoding)
			throws TransformerException {
		String Errstr = null;
		try {
			Errstr=message.getPayloadAsString() ;
		} catch (Exception e) {

			e.printStackTrace();
			return "error into data process";
		}		
		
		if (Errstr!="NA")
		{
			return Errstr;
		}
		
		String name = message.getInboundProperty("name");
        String lastName = message.getInboundProperty("lname");
 
        return name+" "+lastName+" "+Errstr;
	}

}
