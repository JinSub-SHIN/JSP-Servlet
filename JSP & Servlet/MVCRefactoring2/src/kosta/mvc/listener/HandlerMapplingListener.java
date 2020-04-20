package kosta.mvc.listener;

import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import javafx.scene.shape.VLineTo;
import kosta.mvc.controller.Controller;
import kosta.mvc.controller.InsertController;
import kosta.mvc.controller.SelectController;

/*
 *  ����� ��û�� �ش��ϴ� key�� ���� ��ü�� �̸� �����ؼ� 
 *  Map�� ������ �� ��� �������� ����� �� �ֵ��� application scope��
 *  Map�� �����Ѵ�...
 *  
 */

@WebListener
public class HandlerMapplingListener implements ServletContextListener {
	
    public void contextDestroyed(ServletContextEvent sce)  { 
         
    }

    public void contextInitialized(ServletContextEvent sce)  { 
        
    	Map<String, Controller> map = new HashMap<String, Controller>();
    	ServletContext application = sce.getServletContext();  	
    	
    	String fileName = application.getInitParameter("fileName");
    	
    	ResourceBundle rb = ResourceBundle.getBundle(fileName);
    	
    	Set<String> keys = rb.keySet();
    	
    	try {
    	
	    	for(String key : keys) {
	    		
	    		String value = rb.getString(key);
	    		//String value�� ��ü��(Controller) ���� Map�����Ѵ�.
	    		Controller controller = (Controller)Class.forName(value).newInstance();
	    		
	    		map.put(key, controller);
	    		
	    	}
    	
    	} catch (Exception ex) {
    		ex.printStackTrace();
    	}    	
    	
    	// application������ �����Ѵ�.    	
    	
    	application.setAttribute("map", map);
    	
    }
	
}
