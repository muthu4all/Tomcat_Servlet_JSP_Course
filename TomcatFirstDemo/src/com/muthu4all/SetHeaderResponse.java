package com.muthu4all;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetHeaderResponse
 */
@WebServlet("/SetHeaderResponse")
public class SetHeaderResponse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetHeaderResponse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setIntHeader("Refresh", 5);
		response.setContentType("text/html");
		 
        Calendar cal = new GregorianCalendar();

        PrintWriter out = response.getWriter();
        out.println("<html>" + 
        		    "<head><title>Auto Refresh Header Setting</title></head>"+
        			"<body>");
		out.println("<h1> Auto Refresh Using Response Header</h1>" +
                "<p>Current Time Is :: " + cal.getTime() + "</p>");
		out.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
