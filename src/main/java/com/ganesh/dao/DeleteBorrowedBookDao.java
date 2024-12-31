package com.ganesh.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import com.ganesh.Dbconnection.DbCon;
public class DeleteBorrowedBookDao {
	public Connection con  = null;
    public boolean deleteBorrowedBookById(int borrowedBookId) {
        try{
        	Connection con = DbCon.getCon();
            PreparedStatement ps = con.prepareStatement("DELETE FROM borrowed_books WHERE bcode = ?");
            ps.setInt(1, borrowedBookId);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
