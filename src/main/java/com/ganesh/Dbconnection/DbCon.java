package com.ganesh.Dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	public static Connection con = null;
    static {
    	try {
    		Class.forName(DbInfo.driver);
        	con = DriverManager.getConnection(DbInfo.dbUrl,DbInfo.uname,DbInfo.pword);
    		
    	}catch(SQLException e) {
    		 e.printStackTrace();
    	}catch(Exception e) {
   		 e.printStackTrace();
   	} 		  
  }
    public static Connection getCon() {
    	 return con;
    }
}
