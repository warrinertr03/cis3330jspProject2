package email;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import business.User;
import data.UserIO;

public class AddToEmailListServlet extends HttpServlet
{    
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException
    {
        // get parameters from the request
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String emailAddress = request.getParameter("emailAddress");
        String skillLevel = request.getParameter("skillLevel");

        // use regular Java classes
        User user = new User(firstName, lastName, emailAddress, skillLevel);
        
        // validate parameters
        String message = "";
        String url = "";
        
        if(firstName.length() == 0 ||
                lastName.length() == 0 ||
                emailAddress.length() == 0 ||
                skillLevel.length() == 0 )
        {
            message = "Please fill out all four text boxes.";
            url = "/join_email_list.jsp";
        }
        else if(!emailAddress.contains("@")){
            message = "Please enter a valid email address.";
            url = "/join_email_list.jsp";
        }
        else{
            ServletContext context = getServletContext();
            String path = context.getRealPath("/WEB-INF/EmailList.txt");
            UserIO.addRecord(user, path);
            
            url = "/display_email_entry.jsp";
        }
        
        ServletContext context = this.getServletContext();
        String custServEmail = context.getInitParameter("custServEmail");
        
        ServletConfig config = this.getServletConfig();
        String relativePath = config.getInitParameter("relativePathToFile");
        
        // store the User object in the request object
        request.setAttribute("user", user);
        request.setAttribute("message", message);
        
        // forward request and response objects to JSP page
        RequestDispatcher dispatcher =
             getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);              
    }    
}
