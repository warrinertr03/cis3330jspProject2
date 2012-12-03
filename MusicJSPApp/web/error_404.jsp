<%-- 
    Document   : error_404
    Created on : Nov 16, 2012, 11:15:58 AM
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
        
        <h1>404 Error</h1>
        <p>The server was not able to find the file you requested.</p>
        <p>To continue, click the back button.</p>
        <br>
        
        <%@ include file="/WEB-INF/includes/footer.jsp" %> 
        
    </body>
</html>
