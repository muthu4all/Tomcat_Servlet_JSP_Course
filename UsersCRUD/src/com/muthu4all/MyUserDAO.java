package com.muthu4all;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MyUserDAO {

	private Connection myConnection = null;
	private String jdbcURL = null;
    private String jdbcUsername = null;
    private String jdbcPassword = null;
	
	public MyUserDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
		this.jdbcURL = jdbcURL;
		this.jdbcUsername = jdbcUsername;
		this.jdbcPassword = jdbcPassword;
	}
	
    protected void makeJDBCConnection() throws SQLException {
        if (myConnection == null || myConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            myConnection = DriverManager.getConnection(
                                        jdbcURL, jdbcUsername, jdbcPassword);
        }
    }
    
    protected void closeJDBCConnection() throws SQLException {
        if (myConnection != null && !myConnection.isClosed()) {
            myConnection.close();
        }
    }
    
    public List<MyUserBean> getAllUsers()  throws SQLException  {
        List<MyUserBean> usersList = new ArrayList<MyUserBean>();
        String sql = "SELECT * FROM myusers";
        makeJDBCConnection();
        PreparedStatement prepstmt = myConnection.prepareStatement(sql);
        ResultSet reSet = prepstmt.executeQuery();
        while (reSet.next()) {
        	MyUserBean myUserBean = new MyUserBean();
        	myUserBean.setUserid(reSet.getInt("userid"));
        	myUserBean.setFirstname(reSet.getString("firstname"));
            myUserBean.setLastname(reSet.getString("lastname"));
            myUserBean.setAge(reSet.getInt("age"));
            myUserBean.setPosition(reSet.getString("position")); 
            usersList.add(myUserBean);
        }
        
        reSet.close();
        prepstmt.close();
        closeJDBCConnection();
        return usersList;
    	
    }

	public void addUser(MyUserBean myUserBean) throws SQLException {
    	String sql = "INSERT INTO myusers(firstname,lastname,age,position)" +
		" VALUES (?,?,?,? )";
    	makeJDBCConnection();
    	PreparedStatement prepstmt = myConnection.prepareStatement(sql);
    	prepstmt.setString(1, myUserBean.getFirstname());
        prepstmt.setString(2, myUserBean.getLastname());
        prepstmt.setInt(3, myUserBean.getAge());
        prepstmt.setString(4, myUserBean.getPosition());
        prepstmt.executeUpdate();
        prepstmt.close();
        closeJDBCConnection();        
	
	}
	public void removeUser(int userId)  throws SQLException  {
    	String sql = "DELETE FROM myusers WHERE userid=?";
    	makeJDBCConnection();
    	PreparedStatement prepstmt = myConnection.prepareStatement(sql);
    	prepstmt.setInt(1, userId);
    	prepstmt.executeUpdate();
    	prepstmt.close();
    	closeJDBCConnection();
	}
	
    public MyUserBean getUserById(int userId)  throws SQLException  {
    	MyUserBean myUserBean = new MyUserBean();
    	String sql = "SELECT * FROM myusers WHERE userid=?";
    	makeJDBCConnection();
    	PreparedStatement prepstmt = myConnection.prepareStatement(sql);
    	prepstmt.setInt(1, userId);
    	ResultSet reSet = prepstmt.executeQuery();
        if (reSet.next()) {
        	myUserBean.setUserid(reSet.getInt("userid"));
        	myUserBean.setFirstname(reSet.getString("firstname"));
        	myUserBean.setLastname(reSet.getString("lastname"));
        	myUserBean.setAge(reSet.getInt("age"));
        	myUserBean.setPosition(reSet.getString("position"));
        }
        reSet.close();
        prepstmt.close();
        closeJDBCConnection();
    	return myUserBean;
    }
    
    public void editUser(MyUserBean myUserBean)  throws SQLException  {    	
    	String sql = "UPDATE myusers SET firstname=?, lastname=?, age=?, position=?" +
                " WHERE userid=?";
    	makeJDBCConnection();
    	PreparedStatement prepstmt = myConnection.prepareStatement(sql);
    	prepstmt.setString(1, myUserBean.getFirstname());
        prepstmt.setString(2, myUserBean.getLastname());            
        prepstmt.setInt(3, myUserBean.getAge());
        prepstmt.setString(4, myUserBean.getPosition());
        prepstmt.setInt(5, myUserBean.getUserid());
        prepstmt.executeUpdate();
        prepstmt.close();
        closeJDBCConnection();
    	
    }	
    
}
