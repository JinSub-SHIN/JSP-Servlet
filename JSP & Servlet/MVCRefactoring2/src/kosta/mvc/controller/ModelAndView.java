package kosta.mvc.controller;

/*
 *  ��û ����� ���� ������������
 *  ��� VIEW�̸��� �̵���Ŀ� ���� ����...
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
