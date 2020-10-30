package bank_db;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Hosp_form")															// Name of acion in form tag of corresponding JSP
public class HospServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	HospDao hDao = new HospDao();					// Create an oblect of Dao class to communicate with database


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dis = request.getRequestDispatcher("/hosp_reg.jsp");				// name of JSP file linked to this servlet 
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String hosp_name = request.getParameter("hosp_name");		// getting the value from form based on name
        String hosp_license = request.getParameter("hosp_license");
		String hosp_type = request.getParameter("hosp_type");
		String hosp_address = request.getParameter("hosp_address");
		String hosp_mail = request.getParameter("hosp_mail");
		String hosp_mobile = request.getParameter("hosp_mobile");
		String hosp_telephone = request.getParameter("hosp_telephone");
		String hosp_username = request.getParameter("hosp_username");
		String hosp_pass = request.getParameter("hosp_pass");
		String hosp_store = request.getParameter("hosp_store");
		String hosp_can_donate = request.getParameter("hosp_can_donate");

		Hosp h = new Hosp();					// Create te class Object to store variables retreived from above
		h.setHosp_name(hosp_name);
		h.setHosp_license(hosp_license);
		h.setHosp_type(hosp_type);
		h.setHosp_address(hosp_address);
		h.setHosp_mail(hosp_mail);
		h.setHosp_mobile(hosp_mobile);
		if(hosp_telephone.length()!=0)
			h.setHosp_telephone(hosp_telephone);
		h.setHosp_username(hosp_username);
		h.setHosp_pass(hosp_pass);
		h.setHosp_store(hosp_store);
		if(hosp_store.equals("Yes"))
			h.setHosp_can_donate(hosp_can_donate);
		
		hDao.store_db(h);										// Call the Dao class method to store in db
		
		RequestDispatcher dis = request.getRequestDispatcher("/show_to_hosp.jsp");
		dis.forward(request, response);
	}

}