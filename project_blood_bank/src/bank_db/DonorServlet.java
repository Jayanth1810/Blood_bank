package bank_db;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Donor_form")															// Name of acion in form tag of corresponding JSP
public class DonorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DonorDao dRDao = new DonorDao();					// Create an oblect of Dao class to communicate with database


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dis = request.getRequestDispatcher("/donor_reg.jsp");				// name of JSP file linked to this servlet 
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String d_blood = request.getParameter("donor_blood_type");		// getting the value from form based on name
		String d_name = request.getParameter("donor_name");
		String d_age = request.getParameter("donor_age");																						// get the required number of parameterd from the form
		String d_weight = request.getParameter("donor_weight");
		String d_gender = request.getParameter("gender");
		String d_mobile = request.getParameter("donor_mobile");
		String d_address = request.getParameter("donor_address");
		String d_healthHistory = request.getParameter("donor_health");
		String d_email = request.getParameter("donor_mail");
		String d_password = request.getParameter("donor_pass");
		String d_cpassword = request.getParameter("donor_conf_pass");
		
		Donor dR = new Donor();					// Create te class Object to store variables retreived from above
		dR.setblood(d_blood);											// Set variables assigned above
		dR.setName(d_name);
		dR.setage(d_age);
		dR.setweight(d_weight);
		dR.setgender(d_gender);
		dR.setmobile(d_mobile);
		dR.setaddress(d_address);
		dR.sethealthHistory(d_healthHistory);
		dR.setemail(d_email);
		dR.setpassword(d_password);
		dR.setcpassword(d_cpassword);
		
		
		
		dRDao.store_db(dR);										// Call the Dao class method to store in db
		
		RequestDispatcher dis = request.getRequestDispatcher("/login.jsp");
		dis.forward(request, response);
	}

}
