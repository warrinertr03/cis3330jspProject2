<%-- 
    Document   : error_java
    Created on : Nov 16, 2012, 11:22:08 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="/WEB-INF/includes/header.html" %>
        
        <%@ page isErrorPage="true" %>
        
        <h1>Java Error</h1>
        <p>Sorry, Java has thrown an exception.</p>
        <p>To continue, click the Back button.</p>
        <br>
        
        <h2>Details</h2>
        <p>
            type: <%= exception.getClass() %><br>
            Message: <%= exception.getMessage() %><br>
        </p>
        
        <%@ include file="/WEB-INF/includes/footer.jsp" %> 
        
    </body>
</html>
