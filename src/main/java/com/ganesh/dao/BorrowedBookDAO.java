package com.ganesh.dao;

import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.BookBean;
import java.sql.*;

@SuppressWarnings("unused")
public class BorrowedBookDAO {
	public Connection con = null; 
    public boolean borrowBook(String bcode) {
    	
        String insertQuery = "INSERT INTO borrowed_books (bcode, bname, bauthor, price, bqty, borrow_date)SELECT CODE, NAME,AUTHOR,PRICE, QTY, CURDATE() FROM BOOKDETAILS WHERE CODE = ? ";
                   
        String updateQuery = "UPDATE BOOKDETAILS SET QTY = QTY - 1 WHERE CODE = ?";
        try {
        	 con = DbCon.getCon();
        	PreparedStatement insertStmt = con.prepareStatement(insertQuery);
            PreparedStatement updateStmt = con.prepareStatement(updateQuery);
            insertStmt.setString(1, bcode);
            updateStmt.setString(1, bcode);
            int rowsInserted = insertStmt.executeUpdate();
            if (rowsInserted == 0) {
                return false; 
            }
            updateStmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}

