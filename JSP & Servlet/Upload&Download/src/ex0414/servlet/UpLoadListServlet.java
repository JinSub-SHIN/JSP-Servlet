package ex0414.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex0414.fileDTO.fileDTO;

@WebServlet("/UpLoadList")
public class UpLoadListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String saveDir = request.getServletContext().getRealPath("/save");

		File f = new File(saveDir);

		if (f.exists()) {
			String [] filelist = f.list();
			request.setAttribute("fileNames", filelist);
		}

		request.getRequestDispatcher("download.jsp").forward(request, response);
		

	}

}
