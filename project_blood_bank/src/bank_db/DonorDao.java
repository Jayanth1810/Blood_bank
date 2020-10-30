package bank_db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DonorDao{													// Class name based on form attached with Dao
	
	public void store_db(Donor dR) {
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","root","root");  

			String d_blood = dR.d_blood;			//	get variables from passed parameter object
			String d_name = dR.d_name;
			String d_age = dR.d_age;
			String d_weight = dR.d_weight;
			String d_gender = dR.d_gender;
			String d_mobile = dR.d_mobile;
			String d_address= dR.d_address;
			String d_healthHistory = dR.d_healthHistory;
			String d_email = dR.d_email;
			String d_password = dR.d_password;
			String d_cpassword = dR.d_cpassword;

			Statement stmt=con.createStatement();
			String query = "insert into donors values('"+d_blood+"','"+d_name+"','"+d_age+"','"+d_weight+"','"+d_gender+"','"+d_mobile+"','"+d_address+"','"+d_healthHistory+"','"+d_email+"','"+d_password+"')";			// Build the query to insert to db
			System.out.println(query);
			System.out.print(stmt.executeUpdate(query));
			con.close();
		}
		catch(Exception e){ System.out.println(e);}  
	}
}