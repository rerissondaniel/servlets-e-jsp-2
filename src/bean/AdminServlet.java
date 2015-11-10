package bean;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import core.Administrator;
import dao.AdministratorDaoImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		AdministratorDaoImpl administratorDaoImpl = new AdministratorDaoImpl();
		
		Administrator admin;
		
		try{
			admin = administratorDaoImpl.searchByName(username);
			if(admin.getPassword().equals(password)){
				session.setAttribute("username", admin.getName());
				response.sendRedirect("webapp/home-admin.jsp");
			}
		}catch(SQLException | ClassNotFoundException exp){
			
		}
		
	}
	
	/**
	 * @throws IOException 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().invalidate();
		
		try {
			response.sendRedirect("webapp/index.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
