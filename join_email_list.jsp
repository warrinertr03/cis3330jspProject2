<%-- 
    Document   : join_email_list
    Created on : Nov 5, 2012, 11:03:13 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tara's Music</title>
    </head>
<body>
    <jsp:include page="/WEB-INF/includes/header.html" />
    <%@ page import = "business.User" %>
    <%
        User user = (User) request.getAttribute("user");
        String message = (String) request.getAttribute("message");
        if (user == null) user = new User();
        if (message == null) message = "";
    %>   
    
  <h1>Want to learn some great songs?</h1>
  <p> Enter your information to be sent a list of songs to learn! <br>
     Then, click on the Submit button.</p>
  <p><i><%= message %></i></p>
  <form action="addToEmailList" method="post">
  <table cellspacing="8" border="0">
    <tr>
      <td align="right">First name:</td>
      <td><input type="text" name="firstName" value ="<%= user.getFirstName()%>"></td>
    </tr>
    <tr>
      <td align="right">Last name:</td>
      <td><input type="text" name="lastName" value ="<%= user.getLastName()%>"></td>
    </tr>
    <tr>
      <td align="right">Email address:</td>
      <td><input type="text" name="emailAddress" value ="<%= user.getEmailAddress()%>"></td>
    </tr>
    <tr>
      <td align="right">Skill Level:</td>
      <td><input type="text" name="skillLevel" value ="<%= user.getSkillLevel()%>"></td>
    </tr>
    <tr>
            <td>"I would like songs from these genre's:"</td>
            <td><select name="music" size="6" multiple="multiple">

            <option value="Rock">Rock</option>

            <option value="Country">Country</option>

            <option value="Bluegrass">Bluegrass</option>

            <option value="Pop">Pop</option>
            
            <option value="Metal">Metal</option>
            
            <option value="MainStream">MainStream</option>

            <option value="All: Rock, Country, Bluegrass, Pop, Metal, MainStream">All</option>

            </select>  
            <td>
    </tr>
    <tr>
      <td></td>
      <td><br><input type="submit" value="Submit"></td>
    </tr>
  </table>
  </form>
  <jsp:include page="/WEB-INF/includes/footer.jsp" />
</body>
</html>
