package com.cpi.is.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cpi.is.service.impl.DispatchingServiceImpl;

/**
 * Servlet implementation class DispatchingController
 */
@WebServlet("/DispatchingController")
public class DispatchingController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String action = "";
	private static String page = "";
	
	private ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
	private DispatchingServiceImpl dispatchingService = (DispatchingServiceImpl) context.getBean("dispatchingService");
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DispatchingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			action = request.getParameter("action");
			
			if ("showDispatching".equals(action)) {
				request.setAttribute("dispatch", new JSONArray(dispatchingService.getDispatching()));
				page = "pages/dispatching.jsp";
			} else if ("saveItem".equals(action)) {
				request.setAttribute("message", dispatchingService.saveItem(request));
				page = "pages/message.jsp";
			} else if ("deleteItem".equals(action)) {
				request.setAttribute("message", dispatchingService.deleteItem(request));
				page = "pages/message.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			request.getRequestDispatcher(page).forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
