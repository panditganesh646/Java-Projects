package com.ganesh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.AdminBean;

import jakarta.servlet.http.HttpServletRequest;

public class LoginDao {
	public Connection con = null;
     public AdminBean login(HttpServletRequest req) {
    	       AdminBean ab = null;
    	      try {
    	    	     
    	    	      con = DbCon.getCon();
    	    	     PreparedStatement ps = con.prepareStatement("SELECT *FROM ADMIN WHERE NAME=? AND PASSWORD = ?");
    	    	     ps.setString(1,req.getParameter("aname"));
    	    	     ps.setString(2,req.getParameter("pass"));
    	    	     ResultSet rs = ps.executeQuery();
    	    	     if(rs.next()) {
    	    	    	   ab  = new AdminBean();
    	    	    	   ab.setAdminName(rs.getString(1));
    	    	    	   ab.setAdminPass(rs.getString(2));
    	    	    	   ab.setFirstName(rs.getString(3));
    	    	    	   ab.setLastName(rs.getString(4));
    	    	    	   ab.setMid(rs.getString(5));
    	    	    	   ab.setPhno(rs.getLong(6));
    	    	     }
    	        
    	      }catch(SQLException e) {
    	    	  e.printStackTrace();
    	      }catch(Exception e) {
    	    	  e.printStackTrace();
    	      }
			return ab;  
     }
}
