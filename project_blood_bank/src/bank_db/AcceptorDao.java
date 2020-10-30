package bank_db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class AcceptorDao{													// Class name based on form attached with Dao
	
	public void store_db(Acceptor ac) {
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","root","root");  

			String fullname = ac.a_fullname;		// getting the value from form based on name
		    String contact = ac.a_contact;          // get the required number of parameterd from the form
		    String address = ac.a_address;
		    String pincode = ac.a_pincode;
		    String bloodgroup = ac.a_bloodgroup;
		    String date = ac.a_date;
		    String purpose = ac.a_purpose;								//	get variables from passed parameter object

			Statement stmt=con.createStatement();

			String query = "insert into request(name,mobile,address,pincode,blood_group,last_date,purpose) values('"+fullname+"','"+contact+"','"+address+"','"+pincode+"','"+bloodgroup+"','"+date+"','"+purpose+"')";			// Build the query to insert to db
			System.out.println(query);
			System.out.print(stmt.executeUpdate(query));
			con.close();
		}
		catch(Exception e){ System.out.println(e);}  
	}
}