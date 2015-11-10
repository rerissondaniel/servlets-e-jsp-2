package bean;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import core.Administrator;
import dao.AdministratorDaoImpl;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String retypePassword = request.getParameter("retype-password");
		
		Administrator admin = new Administrator();
		AdministratorDaoImpl administratorDaoImpl = new AdministratorDaoImpl();
		
		if(password.equals(retypePassword)){
			admin.setName(username);
			admin.setPassword(password);			
			
			System.out.println(admin.toString());
			
			try {
				if(administratorDaoImpl.searchByName(username) == null){
					administratorDaoImpl.insert(admin);
					response.sendRedirect("webapp/index.jsp");
				}else{
					//TODO treta
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
