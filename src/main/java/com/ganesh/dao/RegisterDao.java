package com.ganesh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.AdminBean;

public class RegisterDao {
	public Connection con = null;
      public int registerAdmin(AdminBean ab) {
    	  int k = 0;
    	    try {
    	    	   con = DbCon.getCon();
    	    	  PreparedStatement ps = con.prepareStatement("INSERT INTO ADMIN VALUES(?,?,?,?,?,?)");
    	    	  ps.setString(1, ab.getAdminName());
    	    	  ps.setString(2, ab.getAdminPass());
    	    	  ps.setString(3, ab.getFirstName());
    	    	  ps.setString(4, ab.getLastName());
    	    	  ps.setString(5,ab.getMid());
    	    	  ps.setLong(6,ab.getPhno());
    	    	  k = ps.executeUpdate();
    	    }catch(SQLException e) {
    	    	e.printStackTrace();
    	    }catch(Exception e) {
    	    	e.printStackTrace();
    	    }
			return k;
      }
}
