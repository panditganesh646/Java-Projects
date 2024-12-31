package com.ganesh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.BookBean;
public class ViewBookDao {
	public Connection con = null;
        public List<BookBean> viewBooks(){
        	List<BookBean> list  = new ArrayList<BookBean>();
        	   try {
        		         con = DbCon.getCon();
        		        PreparedStatement ps = con.prepareStatement("SELECT *FROM BOOKDETAILS");
        		        ResultSet rs = ps.executeQuery();
        		        while(rs.next()) {
        		        	  BookBean book  = new BookBean();
        		        	  book.setBcode(rs.getString(1));
        		        	  book.setBname(rs.getString(2));
        		        	  book.setbAuthor(rs.getString(3));
        		        	  book.setPrice(rs.getDouble(4));
        		        	  book.setBqty(rs.getInt(5));
        		        	  list.add(book);  	  
        		        }
        	   }catch(SQLException e) {
        		    e.printStackTrace();
        	   }catch(Exception e) {
        		   e.printStackTrace();
        	   }
			return list;
        }
}
