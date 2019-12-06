package com.muthu4all;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7985369773110901699L;
	private MyUserDAO myUserDao;

	public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        
        myUserDao  = new MyUserDAO(jdbcURL, jdbcUsername, jdbcPassword);
	
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String useraction = req.getServletPath();
		 
		 try
	     {
			 switch (useraction) {
            case "/new_user_form":
                showNewUserForm(req, resp);
                break;
            case "/insert_user":
                insertUser(req, resp);
                break;
            case "/delete_user":
                deleteUser(req, resp);
                break;
			 case "/list_users":
	             listUsers(req, resp);
	             break;
	         default:
	             listUsers(req, resp);
	             break;
	         }
	     } catch (SQLException ex) {
  			ex.printStackTrace();
  			throw new ServletException(ex);
		}
			 
			 
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
    private void listUsers (HttpServletRequest req, HttpServletResponse resp) 
    		throws SQLException, IOException, ServletException
    {
        req.setAttribute("userList", myUserDao.getAllUsers());
        RequestDispatcher rd = req.getRequestDispatcher("list_user.jsp");
        rd.forward(req, resp);
     }
    
    private void showNewUserForm (HttpServletRequest req, HttpServletResponse resp)
    		throws IOException, ServletException
    {
    	RequestDispatcher rd = req.getRequestDispatcher("add_user.jsp");
        rd.forward(req, resp);
    } 
    private void deleteUser (HttpServletRequest req, HttpServletResponse resp)
    		throws SQLException, IOException, ServletException
    {
    	int id = Integer.parseInt(req.getParameter("userid"));
    	myUserDao.removeUser(id);
        resp.sendRedirect("listusers");    	
    }	
    
    private void insertUser (HttpServletRequest req, HttpServletResponse resp)
    		throws SQLException, IOException, ServletException
    {
    	MyUserBean myUser = new MyUserBean(); 
    	myUser.setFirstname(req.getParameter("firstname"));
    	myUser.setLastname(req.getParameter("lastname"));
    	myUser.setAge(Integer.parseInt(req.getParameter("age")));
    	myUser.setPosition(req.getParameter("position"));
    	myUserDao.addUser(myUser);
       	resp.sendRedirect("list_users");    	

	
    	
    }

	
}
