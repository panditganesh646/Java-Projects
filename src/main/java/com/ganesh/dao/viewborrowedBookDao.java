package com.ganesh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.borrowedbookbean;

public class viewborrowedBookDao {
	public Connection connection = null; 
    public List<borrowedbookbean> getBorrowedBooks() {
        List<borrowedbookbean> borrowedBooks = new ArrayList<>();
        try{
        	 connection = DbCon.getCon();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM borrowed_books WHERE bqty > 0"); 

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
            	borrowedbookbean book = new borrowedbookbean();
                book.setBcode(resultSet.getString("bcode"));
                book.setBname(resultSet.getString("bname"));
                book.setBauthor(resultSet.getString("bauthor"));
                book.setPrice(resultSet.getDouble("price"));
                book.setBqty(resultSet.getInt("bqty"));
                book.setBorrowDate(resultSet.getDate("borrow_date"));

                borrowedBooks.add(book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return borrowedBooks;
    }
}

