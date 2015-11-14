package bean;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
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
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
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
			if(admin != null && admin.getPassword().equals(password)){
				session.setAttribute("username", admin.getName());
				response.sendRedirect("webapp/home-admin.jsp");
			}else{
				if(admin == null)
					request.setAttribute("error", "Nome de usuário inválido");
				else
					request.setAttribute("error", "Senha incorreta");
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("webapp/index.jsp");
				dispatcher.forward(request, response);
			}
		}catch(SQLException | ClassNotFoundException exp){
			
		}
		
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().invalidate();
		response.sendRedirect("webapp/index.jsp");
	}

}
