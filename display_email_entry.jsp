<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Tara's Music</title>
</head>

<body>
    
    <jsp:include page="/WEB-INF/includes/header.html" />
        
    <h1>You have now been added to the email list, <%= request.getParameter("firstName") %>
    <%= request.getParameter("lastName") %>! </h1>

    <p>Here is the information that you entered:</p>

    <%@ page import="business.User" %>
    <% User user = (User) request.getAttribute("user"); %>
    <table cellspacing="5" cellpadding="5" border="1">
        <tr>
            <td align="right">First name:</td>
            <td><%= user.getFirstName() %></td>
        </tr>
        <tr>
            <td align="right">Last name:</td>
            <td><%= user.getLastName() %></td>
        </tr>
        <tr>
            <td align="right">Email address:</td>
            <td><%= user.getEmailAddress() %></td>
        </tr>
        <tr>
            <td align="right">Skill Level:</td>
            <td><%= user.getSkillLevel() %></td>
        </tr>
    </table>
        
    <br>    
    <p>You will be sent the music for skill level,  <%= request.getParameter("skillLevel") %>, for the following genre's: </p>
        
    <p><%
    String [] selectedMusic = request.getParameterValues("music");
    for(int x=0; x < selectedMusic.length; x++)
           {
        %>
        <%= selectedMusic[x] %> <br>
        <%
    }
    %>
    </p>

    <p>To enter another email address, click on the Back <br>
    button in your browser or the Return button shown <br>
    below.</p>

    <form action="join_email_list.jsp" method="post">
        <input type="submit" value="Return">
    </form>
    
   <jsp:include page="/WEB-INF/includes/footer.jsp" />

</body>
</html>