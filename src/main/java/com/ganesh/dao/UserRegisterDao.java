package com.ganesh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.UserBean;

public class UserRegisterDao {
    public boolean insertUser(UserBean user) {
        try {
        	
        	   Connection conn = DbCon.getCon();
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO users (user_name, user_pass, user_first_name, user_last_name, user_mid) VALUES (?, ?, ?, ?, ?)"); 
            stmt.setString(1, user.getUserName());
            stmt.setString(2, user.getUserPass());
            stmt.setString(3, user.getUserFirstName());
            stmt.setString(4, user.getUserLastName());
            stmt.setString(5, user.getUserMid());

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

}
