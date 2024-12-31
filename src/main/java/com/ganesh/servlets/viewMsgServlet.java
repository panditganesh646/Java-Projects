package com.ganesh.servlets;
import java.io.IOException;
import java.util.List;

import com.ganesh.bean.Message;
import com.ganesh.dao.ViewMsgDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/viewMessages")
public class viewMsgServlet extends HttpServlet {
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Message> messages = new ViewMsgDao().getAllMessages();

        if(messages!=null) {
        	 request.setAttribute("messages", messages);
             request.getRequestDispatcher("viewMessages.jsp").forward(request, response);
        }else {
        	 request.setAttribute("messages", "No Meassages....!");
             request.getRequestDispatcher("viewMessages.jsp").forward(request, response);
        } 
    }
}

