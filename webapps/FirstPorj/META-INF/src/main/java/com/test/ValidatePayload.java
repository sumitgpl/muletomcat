package com.test;

import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;

public class ValidatePayload extends AbstractMessageTransformer {

	@Override
	public Object transformMessage(MuleMessage message, String outputEncoding)
			throws TransformerException {
		if (message.getInboundProperty("name").toString().equals("sumit"))
		{
			return "NA";
		}
		else
		{
			return "invalid data"+message.getInboundProperty("name").toString().equals("sumit");
		}	
	}

}
