package bank_db;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Raise_request")															// Name of action in form tag of corresponding JSP
public class AcceptorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	AcceptorDao ad = new AcceptorDao();					// Create an oblect of Dao class to communicate with database


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dis = request.getRequestDispatcher("/Acceptor.jsp");				// name of JSP file linked to this servlet 
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fullname = request.getParameter("fullname");		// getting the value from form based on name
		String contact = request.getParameter("contact");// get the required number of parameterd from the form
		String address = request.getParameter("address");
		String pincode = request.getParameter("pincode");
		String bloodgroup = request.getParameter("bloodgroup2");
		String date = request.getParameter("date");
		String purpose = request.getParameter("purpose");
		
		Acceptor ac = new Acceptor();					// Create te class Object to store variables retreived from above
		ac.setFullname(fullname);		// Set variables assigned above
		ac.setContact(contact);
		ac.setAddress(address);
		ac.setPincode(pincode);
		ac.setBloodgroup(bloodgroup);
		ac.setDate(date);
		ac.setPurpose(purpose);
		
		ad.store_db(ac);										// Call the Dao class method to store in db
		
		RequestDispatcher dis = request.getRequestDispatcher("/acceptor.jsp");
		dis.forward(request, response);
	}

}
