package com.ganesh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ganesh.Dbconnection.DbCon;

public class DeleteBookDao {
	public Connection con = null;
       public int deleteBook(String  bookcode) {
    	   int k = 0;
    	   try {
    		       con = DbCon.getCon();
    		      PreparedStatement ps = con.prepareStatement("DELETE FROM BOOKDETAILS WHERE CODE=?");
    		      ps.setString(1,bookcode);
    		      k = ps.executeUpdate();
    	   }catch(SQLException e) {
    		     e.printStackTrace();
    	   }catch(Exception e) {
    		     e.printStackTrace();
    	   }  
		return k;     
     }
}
