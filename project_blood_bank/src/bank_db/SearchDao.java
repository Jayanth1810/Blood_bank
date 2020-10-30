package bank_db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SearchDao{													// Class name based on form attached with Dao
	
	public ResultSet check_db(Search s) {
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","root","root");  

			if(s.blood_group==null)
				return null;
			Statement stmt=con.createStatement();
			String query = "select * from blood_stock where blood_group='"+s.getBlood_group()+"'";			// Build the query to insert to db
			System.out.println(query);
			ResultSet rs = stmt.executeQuery(query);
			return rs;
			/*
            if(rs.next())
                if(rs.getString("blood_group").equals(s.getBlood_group()))
                    System.out.println(rs.getString("units"));
			con.close();*/
		}
		catch(Exception e){ System.out.println(e);}  
		return null;
	}
}