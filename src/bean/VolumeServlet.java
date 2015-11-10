package bean;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import core.Volume;
import dao.VolumeDaoImpl;

/**
 * Servlet implementation class VolumeServlet
 */
@WebServlet("/VolumeServlet")
public class VolumeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");

		VolumeDaoImpl volumeDaoImpl = new VolumeDaoImpl();

		try {
			volumeDaoImpl.delete(volumeDaoImpl.searchByTitle(title));
			response.sendRedirect("webapp/home-admin.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String type = request.getParameter("type");
		String publisher = request.getParameter("publisher");
		int numberOfPages = Integer.parseInt(request.getParameter("pages"));
		int publicationYear = Integer.parseInt(request.getParameter("publication_year"));

		String[] authors = request.getParameter("authors").split(";");

		List<String> listAuthors = new ArrayList<String>();

		for (String author : authors) {
			author = author.trim();
			listAuthors.add(author);
		}

		Volume volume = new Volume(title, listAuthors, description, type, numberOfPages,
				publicationYear, publisher);
		
		VolumeDaoImpl volumeDaoImpl = new VolumeDaoImpl();
		
		try {
			volumeDaoImpl.insert(volume);
			response.sendRedirect("webapp/home-admin.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
