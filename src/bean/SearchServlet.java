package bean;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import core.Volume;
import dao.VolumeDaoImpl;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Volume volume = new Volume();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");

		VolumeDaoImpl volumeDaoImpl = new VolumeDaoImpl();

		try {
			volume = volumeDaoImpl.searchByTitle(title);
			RequestDispatcher dispatcher;
			
			if (volume == null) {
				
				if(request.getSession().getAttribute("username") == null)
					dispatcher = request.getRequestDispatcher("webapp/index.jsp");
				else
					dispatcher = request.getRequestDispatcher("webapp/home-admin.jsp");
				
				request.setAttribute("alert", "Volume não encontrado");
			
			} else {
				dispatcher = request.getRequestDispatcher("webapp/result.jsp");
				request.setAttribute("volume", volume);
			}
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public String getVolume() {
		return volume.toString();
	}

	public void setVolume(Volume volume) {
		this.volume = volume;
	}
	
}
