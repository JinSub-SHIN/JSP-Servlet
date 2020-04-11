package weekendHomeWork_0411;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardServlet extends HttpServlet {
	
	List<BoardDTO> list = new ArrayList<BoardDTO>();
	
	@Override
	public void init() throws ServletException {
		System.out.println("��������� �ʱ�ȭ�۾������...");				
		list.add(new BoardDTO("�ȳ��ϼ���", "jang", "2019/06/29"));
		list.add(new BoardDTO("������", "jang", "2020/03/18"));
		list.add(new BoardDTO("�ָ��ε� ������..", "jang", "2020/04/11"));
		ServletContext application = super.getServletContext();
		application.setAttribute("Board", list);
		
	}	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Boardserviceȣ���...");
		ServletContext application = req.getServletContext();
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		String id = ((UserDTO)session.getAttribute("user")).getId();
		String subject = req.getParameter("subject");
		DateFormat format = new SimpleDateFormat("yyyy/MM/dd");
		String datestr = format.format(Calendar.getInstance().getTime());
		BoardDTO bdto = new BoardDTO(subject, id, datestr);
		list.add(bdto);
		application.setAttribute("Board", list);
		
		out.println("<script>");
		out.println("top.location.href='index.jsp'");
		out.println("</script>");		
		
	}	
	
}
