package com.acme.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class DebugTag extends TagSupport {

    @Override
    public int doStartTag() throws JspException {
        try {
            pageContext.getOut().println("<tbody><tr>");
            while (pageContext.getRequest().getAttributeNames().hasMoreElements()) {
                Object object = pageContext.getRequest().getAttributeNames().nextElement();
                pageContext.getOut().println("      <td>" + object.toString() + "</td>");
            }
            pageContext.getOut().println("</tbody>");
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            throw new JspException(e);
        }
        return super.doStartTag();
    }

    
}
