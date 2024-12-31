package com.ganesh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.BookBean;
public class UpdateBookDao {
	public Connection con = null;
	 public int updateBook(String bookcode,BookBean bb) {
 	    int k = 0;
 	           try {
 	        	      con = DbCon.getCon();
 	        	     PreparedStatement ps = con.prepareStatement("UPDATE BOOKDETAILS SET NAME = ?,AUTHOR = ?,PRICE = ?, QTY = ? WHERE CODE = ?");
 	        	     ps.setString(1,bb.getBname());
 	        	     ps.setString(2, bb.getbAuthor());
 	        	     ps.setDouble(3,bb.getPrice());
 	        	     ps.setInt(4,bb.getBqty());
 	        	     ps.setString(5,bookcode);
 	        	     k = ps.executeUpdate();
 	           }catch(SQLException e) {
 	        	    e.printStackTrace();
 	           }catch(Exception e) {
 	        	     e.printStackTrace();
 	           }
 	    return k;
 	    
   }
}
