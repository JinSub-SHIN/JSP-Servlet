package kosta.mvc.controller;

/*
 *  요청 결과에 대한 데이터정보와
 *  결과 VIEW이름과 이동방식에 대한 관리...
 */

public class ModelAndView {

	private boolean isRediret;
	private String viewName;
	
	public ModelAndView() {}
	
	public ModelAndView(boolean isRediret, String viewName) {
		super();
		this.isRediret = isRediret;
		this.viewName = viewName;
	}

	public boolean isRediret() {
		return isRediret;
	}

	public void setRediret(boolean isRediret) {
		this.isRediret = isRediret;
	}

	public String getViewName() {
		return viewName;
	}

	public void setViewName(String viewName) {
		this.viewName = viewName;
	}
	
	
	
	
	
}
