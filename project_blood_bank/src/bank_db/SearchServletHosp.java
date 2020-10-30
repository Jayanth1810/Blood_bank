package bank_db;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServletHosp
 */
@WebServlet("/Req_search")
public class SearchServletHosp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	SearchDao sDao = new SearchDao();					// Create an oblect of Dao class to communicate with database

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dis = request.getRequestDispatcher("/login.jsp");				// name of JSP file linked to this servlet 
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String blood_group = request.getParameter("donor_blood_type");		// getting the value from form based on name

		System.out.print(blood_group);
		Search s = new Search();
		s.setBlood_group(blood_group);

		System.out.println("Hello");
		sDao.check_db(s);										// Call the Dao class method to store in db
		
		RequestDispatcher dis = request.getRequestDispatcher("/show_to_hosp.jsp");				// name of JSP file linked to this servlet 
		dis.forward(request, response);
		
	}

}
