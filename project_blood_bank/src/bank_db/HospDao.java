package bank_db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class HospDao{													// Class name based on form attached with Dao
	
	public void store_db(Hosp h) {
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","root","root");  

			//String hosp_name = h.hosp_name;
            //String hosp_lic = h.hosp_license;								//	get variables from passed parameter object

			Statement stmt=con.createStatement();
			String query = "insert into hospital values("+h.get_all_for_insert()+")";			// Build the query to insert to db
			System.out.println(query);
			System.out.print(stmt.executeUpdate(query));
			con.close();
		}
		catch(Exception e){ System.out.println(e);}  
	}
}