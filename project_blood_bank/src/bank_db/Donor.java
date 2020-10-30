package bank_db;

import java.util.*;

public class Donor {					// Name the class based on JSP file

	// Create Class Variables for details in form

	public String d_blood,d_name,d_age,d_weight,d_gender,d_mobile,d_address,d_healthHistory,d_email,d_password,d_cpassword;

	// Create setter and getter methods such as
	
	/*
	public void setUser(String user) {this.user=user;}
	public String getUser() {return this.user;}
	*/
		public void setblood(String d_blood) { 
        this.d_blood=d_blood;
    }
	
	public void setName(String d_name) { 
        this.d_name=d_name;
    }
	
	public void setage(String d_age) { 
        this.d_age=d_age;
    }
	
	public void setweight(String d_weight) { 
        this.d_weight=d_weight;
    }
	
		public void setgender(String d_gender) { 
        this.d_gender=d_gender;
    }
	
	public void setmobile(String d_mobile) { 
        this.d_mobile=d_mobile;
    }
	
	public void setaddress(String d_address) { 
        this.d_address=d_address;
    }
	
	public void sethealthHistory(String d_healthHistory) { 
        this.d_healthHistory=d_healthHistory;
    }
	
	public void setemail(String d_email) { 
        this.d_email=d_email;
    }
	
	public void setpassword(String d_password) { 
        this.d_password=d_password;
    }
	
	public void setcpassword(String d_cpassword) { 
        this.d_cpassword=d_cpassword;
    }

}