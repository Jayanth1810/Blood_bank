package bank_db;

import java.util.*;

public class Acceptor {					// Name the class based on JSP file

	public String a_fullname,a_contact,a_address,a_pincode,a_bloodgroup,a_date,a_purpose;

	String user;

	 public void setFullname(String a_fullname) { 
        this.a_fullname=a_fullname;
    }
    
    public void setContact(String a_contact) { 
        this.a_contact = a_contact;
    }
	public void setAddress(String a_address) { 
        this.a_address=a_address;
    }
    
    public void setPincode(String a_pincode) { 
        this.a_pincode = a_pincode;
    }
    public void setBloodgroup(String a_bloodgroup) { 
        this.a_bloodgroup=a_bloodgroup;
    }
    
    public void setDate(String a_date) { 
        this.a_date = a_date;
    }
	
    public void setPurpose(String a_purpose) { 
        this.a_purpose = a_purpose;
    }
    
}