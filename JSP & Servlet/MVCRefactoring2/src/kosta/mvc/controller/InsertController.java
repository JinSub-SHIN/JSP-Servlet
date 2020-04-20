package kosta.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// request 정보 받기.... -> DTO에 저장 -> Service 호출 -> DAO호출
		// 결과를 받기 -> 이동
		
		System.out.println("InsertController...");
		
		ModelAndView mv = new ModelAndView(true, "insertResult.jsp");
		// 이동방식은 redirect 로 가고 insertResult.jsp 로 이동하라.
				
		return mv;
	}

}
