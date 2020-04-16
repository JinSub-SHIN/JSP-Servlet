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
import ex0416.domain.Member;


@WebServlet("/insert")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url="error.jsp";
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		
		Member member = new Member(id,pwd,name, Integer.parseInt(age), phone, addr);
		MemberDAO memberDao = new MemberDAOImpl();
		
		try {
			memberDao.insert(member);
			url = "index.html";
			
		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errMsg", e.getMessage());
		}
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}



}
