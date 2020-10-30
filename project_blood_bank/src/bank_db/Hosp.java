package bank_db;

public class Hosp {
    
    public String hosp_name;
    public String hosp_license;
    public String hosp_type;
    public String hosp_address;
    public String hosp_mail;
    public String hosp_mobile;
    public String hosp_telephone="null";
    public String hosp_username;
    public String hosp_pass;
    public String hosp_store;
    public String hosp_donate="No";

    public String get_all_for_insert() {
        return "'"+hosp_name+"','"+hosp_license+"','"+ hosp_type+"','"+ hosp_address+"','"+ hosp_mail+"','"+ 
                hosp_mobile+"','"+ hosp_telephone+"','"+ hosp_username+"','"+ hosp_pass+"','"+hosp_store+"','"+hosp_donate+"'";

    }

    public String getHosp_name() {
        return hosp_name;
    }

    public void setHosp_name(String hosp_name) {
        this.hosp_name = hosp_name;
    }

    public String getHosp_license() {
        return hosp_license;
    }

    public void setHosp_license(String hosp_license) {
        this.hosp_license = hosp_license;
    }

    public String getHosp_type() {
        return hosp_type;
    }

    public void setHosp_type(String hosp_type) {
        this.hosp_type = hosp_type;
    }

    public String getHosp_address() {
        return hosp_address;
    }

    public void setHosp_address(String hosp_address) {
        this.hosp_address = hosp_address;
    }

    public String getHosp_mail() {
        return hosp_mail;
    }

    public void setHosp_mail(String hosp_mail) {
        this.hosp_mail = hosp_mail;
    }

    public String getHosp_mobile() {
        return hosp_mobile;
    }

    public void setHosp_mobile(String hosp_mobile) {
        this.hosp_mobile = hosp_mobile;
    }

    public String getHosp_telephone() {
        return hosp_telephone;
    }

    public void setHosp_telephone(String hosp_telephone) {
        this.hosp_telephone = hosp_telephone;
    }

    public String getHosp_username() {
        return hosp_username;
    }

    public void setHosp_username(String hosp_username) {
        this.hosp_username = hosp_username;
    }

    public String getHosp_pass() {
        return hosp_pass;
    }

    public void setHosp_pass(String hosp_pass) {
        this.hosp_pass = hosp_pass;
    }

    public void setHosp_store(String hosp_store) {
        this.hosp_store = hosp_store;
    } 

    public void setHosp_can_donate(String hosp_can_donate) {
        this.hosp_donate = hosp_can_donate;
    }

}