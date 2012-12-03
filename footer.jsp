<%-- 
    Document   : footer
    Created on : Nov 9, 2012, 1:11:06 PM
    Author     : user
--%>

<%@page import="java.util.*" %>
<%
    //ititialize the current year that's used in the copyright notice
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>

<p><small>
&copy; Copyright <%= currentYear %> Tara Warriner
</small></p>
</body>
</html>

