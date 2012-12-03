package business;

public class User
{
    private String firstName;
    private String lastName;
    private String emailAddress;
    private String skillLevel; 
    
    public User()
    {
        firstName = "";
        lastName = "";
        emailAddress = "";
        skillLevel = "";
    }
    
    public User(String first, String last, String email, String skill)
    {
        firstName = first;
        lastName = last;
        emailAddress = email;
        skillLevel = skill;
    }
    
    public void setFirstName(String f)
    {
        firstName = f;
    }

    public String getFirstName()
    { 
        return firstName; 
    }
    
    public void setLastName(String l)
    {
        lastName = l;
    }
    
    public void setSkillLevel(String s)
    {
        skillLevel = s;
    }

    public String getLastName()
    { 
        return lastName; 
    }
    
    public void setEmailAddress(String e)
    {
        emailAddress = e;
    }

    public String getEmailAddress()
    { 
        return emailAddress; 
    }
    
    public String getSkillLevel()
    { 
        return skillLevel; 
    }
}
