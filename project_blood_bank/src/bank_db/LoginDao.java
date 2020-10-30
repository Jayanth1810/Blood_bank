package bank_db;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.Statement;

public class LoginDao{
	
	
	public String check_db(Login login) {
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","root","root");  
			String id = login.id;
			String pass = login.pass;
			String type= login.type;
			Statement stmt=con.createStatement();
			ResultSet rs = null;
			stmt = con.createStatement();
			System.out.print(id);
			
			if(type.equals("hospital"))
			{
				String query = "select username, password from hospital where username= '"+id+"'";
				 rs = stmt.executeQuery(query);
			}
			else if(type.equals("donor"))
			{
				String query = "select username, password from donors where username= '"+id+"'";
				rs = stmt.executeQuery(query);
			}
			else {
				return "/acceptor.jsp";
			}
			
			if(rs!=null) {
				rs.next();
				System.out.println(rs.getString("username")+" Entered"+id+" Pass\nrs.getString(password) "+pass);
				if(rs.getString("username").equals(id) && rs.getString("password").equals(pass))
				{
					if(type.equals("hospital"))
					{
						System.out.println("calling to Hospital");
						return "/show_to_hosp.jsp";
						
					}
					else if(type.equals("donor"))
					{ 
						System.out.println("calling to donor");
						return "/show_to_donor.jsp";
						
					}
					else
						return "/acceptor.jsp";
				}
				else
					return "/login.jsp";
			}
			else
			{

				con.close();
				return "/not_registered.html";
			}
		}
		catch(Exception e){ System.out.println(e);}  
		
		return "/not_registered.html";
	}
}
