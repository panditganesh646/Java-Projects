package com.ganesh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.Message;

public class MessageDAO {
	public Connection connection = null;
    public boolean saveMessage(Message message) {
        boolean status = false;
        try{
        	 connection = DbCon.getCon(); 
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO messages(name, email, message, created_at) VALUES (?, ?, ?, ?)");
            preparedStatement.setString(1, message.getName());
            preparedStatement.setString(2, message.getEmail());
            preparedStatement.setString(3, message.getMessage());
            preparedStatement.setTimestamp(4, message.getCreatedAt());
            int rowsInserted = preparedStatement.executeUpdate();
            status = rowsInserted > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
