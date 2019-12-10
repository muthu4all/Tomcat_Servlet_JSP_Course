package com.muthu4all;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetHeaderNames
 */
@WebServlet("/GetHeaderNames")
public class GetHeaderNames extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetHeaderNames() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("Request Headers:");
		Enumeration<String> headerNames = request.getHeaderNames();

		while (headerNames.hasMoreElements()) {

			String headerName = headerNames.nextElement();
			out.write(headerName);
			out.write("\t\t :");

			Enumeration<String> headerValues = request.getHeaders(headerName);
			if (headerValues != null) {
		        while (headerValues.hasMoreElements()) {
		          String headerValue = (String) headerValues.nextElement();
		          out.println(headerName + ": " + headerValue);
		        }
		      }
			out.write("<br>");

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
