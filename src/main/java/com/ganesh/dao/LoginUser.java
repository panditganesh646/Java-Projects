package com.ganesh.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.UserBean;

import jakarta.servlet.http.HttpServletRequest;

public class LoginUser {
	public Connection con = null;
     public UserBean login(HttpServletRequest req) {
    	 UserBean ab = null;
    	      try {
    	    	     
    	    	      con = DbCon.getCon();
    	    	     PreparedStatement ps = con.prepareStatement("SELECT *FROM USERS WHERE USER_NAME=? AND USER_PASS = ?");
    	    	     ps.setString(1,req.getParameter("cname"));
    	    	     ps.setString(2,req.getParameter("cpass"));
    	    	     ResultSet rs = ps.executeQuery();
    	    	     if(rs.next()) {
    	    	    	   ab  = new UserBean();
    	    	    	   ab.setUserid(rs.getInt(1));
    	    	    	   ab.setUserName(rs.getString(2));
    	    	    	   ab.setUserPass(rs.getString(3));
    	    	    	   ab.setUserFirstName(rs.getString(4));
    	    	    	   ab.setUserLastName(rs.getString(5));
    	    	    	   ab.setUserMid(rs.getString(6));
    	    	
    	    	     }
    	        
    	      }catch(SQLException e) {
    	    	  e.printStackTrace();
    	      }catch(Exception e) {
    	    	  e.printStackTrace();
    	      }
			return ab;  
     }
}
