package org.fkit.system;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {
	private static int count = 0;

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		count++;
		System.out.println("session创建：" + new java.util.Date());
	    se.getSession().getServletContext().setAttribute("count", count);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		  count--;
		  System.out.println("session销毁：" + new java.util.Date());
		  se.getSession().getServletContext().setAttribute("count", count);
	}

}
