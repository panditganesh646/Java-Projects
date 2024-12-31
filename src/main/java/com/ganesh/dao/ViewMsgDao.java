package com.ganesh.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.ganesh.Dbconnection.DbCon;
import com.ganesh.bean.Message;
public class ViewMsgDao {
   public Connection conn = null;
    public List<Message> getAllMessages() {
        List<Message> messages = new ArrayList<>();
        try  {
        	 conn = DbCon.getCon();
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM messages");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Message message = new Message();
                message.setId(rs.getInt("id"));
                message.setName(rs.getString("name"));
                message.setEmail(rs.getString("email"));
                message.setMessage(rs.getString("message"));
                message.setCreatedAt(rs.getTimestamp("created_at"));
                messages.add(message);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return messages;
    }
}

