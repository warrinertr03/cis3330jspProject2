package data;

import java.io.*;
import java.util.*;
import business.User;

public class UserIO
{
    public static void addRecord(User user, String filename) throws IOException
    {
        File file = new File(filename);
        PrintWriter out = new PrintWriter(
                new FileWriter(file, true));
        out.println(user.getEmailAddress()+ "|"
                + user.getFirstName() + "|"
                + user.getLastName() + "|" + user.getSkillLevel());        
        out.close();
    }
    
    public static User getUser(String emailAddress, String filename) throws IOException
    {
        File file = new File(filename);
        BufferedReader in = new BufferedReader(
                new FileReader(file));
        User user = new User();
        String line = in.readLine();
        while (line != null)
        {
            StringTokenizer t = new StringTokenizer(line, "|");
            String email = t.nextToken();
            if (email.equalsIgnoreCase(emailAddress))
            {
                String firstName = t.nextToken();
                String lastName = t.nextToken();
                String skillLevel = t.nextToken();
                user.setEmailAddress(emailAddress);
                user.setFirstName(firstName);
                user.setLastName(lastName);
                user.setSkillLevel(skillLevel);
            }
            line = in.readLine();
        }
        in.close();
        return user;
    }

    public static ArrayList<User> readRecords(String file) throws IOException
    {
        ArrayList<User> users = new ArrayList<User>();
        BufferedReader in = new BufferedReader(
                new FileReader(file));
        String line = in.readLine();
        while (line != null)
        {
            StringTokenizer t = new StringTokenizer(line, "|");
            String emailAddress = t.nextToken();
            String firstName = t.nextToken();
            String lastName = t.nextToken();
            String skillLevel = t.nextToken();
            User user = new User(firstName, lastName, emailAddress, skillLevel);
            users.add(user);
            line = in.readLine();
        }
        in.close();
        return users;
    }
}
