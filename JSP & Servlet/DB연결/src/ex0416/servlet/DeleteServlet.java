package ex0416.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex0416.dao.MemberDAO;
import ex0416.dao.MemberDAOImpl;

@WebServlet("/Delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String url="error.jsp";
		MemberDAO memberDao = new MemberDAOImpl();		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");					
		try {
			memberDao.delete(id, pwd);
			url = "selectAll";
		} catch (SQLException e) {
			e.printStackTrace();
			url = "error.jsp";
		}
		
		resp.sendRedirect(url);		
		
	}

}
