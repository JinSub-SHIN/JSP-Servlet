package ex0414.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import ex0414.fileDTO.fileDTO;

@WebServlet("/UpLoad")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//전송되는 데이터 받기...
//		String name = request.getParameter("name");
//		String subject = request.getParameter("subject");
//		String file = request.getParameter("file");
		
//		System.out.println("name : " + name);
//		System.out.println("subject : " + subject);
//		System.out.println("file : " + file);
		
		String saveDir = request.getServletContext().getRealPath("/save");
		int maxSize = 1024*1024*100; // 100M
		String encoding="UTF-8";
		
		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String name = m.getParameter("name");
		String subject = m.getParameter("subject");
		String file = m.getParameter("file");
		String originalfile = m.getOriginalFileName("file");
		String systemfile = m.getFilesystemName("file");
		
		System.out.println("name : " + name);
		System.out.println("subject : " + subject);
		System.out.println("file : " + file);
		System.out.println("originalfile : " + originalfile);
		System.out.println("systemfile : " + systemfile);
		
		long fileSize = m.getFile("file").length();
		
		//업로드 완료후 결과 페이지로 이동!
		//뷰쪽으로 전달된 정보를 저장해서 가져간다.
		request.setAttribute("name", new fileDTO(name, subject, originalfile, systemfile, fileSize, saveDir));
		
		request.getRequestDispatcher("uploadResult.jsp").forward(request, response);
		
	}

}
