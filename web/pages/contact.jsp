<%-- 
    Document   : contact
    Created on : Feb 24, 2019, 12:33:14 AM
    Author     : Med Said M'bareck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:form action="contact">
            tel:
            <s:textfield name="contactStore.tel" required="true"></s:textfield>
            message:
            <s:textarea name="contactStore.message" required="true"></s:textarea>
            <s:submit  cssClass="btn btn-primary" type="submit" value="Submit"></s:submit>
        </s:form>
    </body>
</html>
