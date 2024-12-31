package com.ganesh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.BookBean;
public class AddBookDao {
	public Connection con = null; 
	 public int AddBook(BookBean bb) {
   	  int k = 0;
   	    try {
   	    	   con = DbCon.getCon();
   	    	  PreparedStatement ps = con.prepareStatement("INSERT INTO BOOKDETAILS VALUES(?,?,?,?,?)");
   	    	  ps.setString(1,bb.getBcode());
   	    	  ps.setString(2, bb.getBname());
   	    	  ps.setString(3,bb.getbAuthor());
   	    	  ps.setDouble(4, bb.getPrice());
   	    	  ps.setInt(5,bb.getBqty());
   	    	  k = ps.executeUpdate();
   	    }catch(SQLException e) {
   	    	e.printStackTrace();
   	    }catch(Exception e) {
   	    	e.printStackTrace();
   	    }
			return k;
     }
}
