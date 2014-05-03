package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RestaurantServlet", urlPatterns = { "/restaurant" })
public class RestaurantServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		request.setAttribute("path", "info");
		request.setAttribute("now", "car");

		request.getRequestDispatcher("/WEB-INF/jsp/restaurant/index.jsp")
				.forward(request, response);

	}

}