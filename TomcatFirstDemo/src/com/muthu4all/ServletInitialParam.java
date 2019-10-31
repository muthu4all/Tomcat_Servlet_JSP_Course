package com.muthu4all;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletInitialParam
 */
@WebServlet(
		urlPatterns = { "/ServletInitialParam" }, 
		initParams = { 
				@WebInitParam(name = "maxRecPerPage", value = "20", description = "Maximum number of pages")
		})
public class ServletInitialParam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletInitialParam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("Initial Param maxRecPerPage " +getInitParameter("maxRecPerPage"));
		out.println("<br>");
		out.println("<br>");
		out.println("Context Parameter DefaultCostCode " +getServletContext().getInitParameter("DefaultCostCode"));
		out.println("<br>");
		out.println("<br>");
		out.println("Context Parameter DefaultDiscountPercent " +getServletContext().getInitParameter("DefaultDiscountPercent"));
		
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}