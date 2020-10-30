package bank_db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login {
    
    public String id, pass,type;

    public void setUser(String id) { 
        this.id=id;
    }
    
    public void setPass(String pass) { 
        this.pass= pass;
    }
    public void setType(String type) { 
        this.type= type;
    }
}