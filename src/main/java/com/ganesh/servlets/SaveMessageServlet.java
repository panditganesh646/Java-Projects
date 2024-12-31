package com.ganesh.servlets;

import java.io.IOException;
import java.sql.Timestamp;

import com.ganesh.bean.Message;
import com.ganesh.dao.MessageDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/saveMessage")
public class SaveMessageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String messageContent = request.getParameter("message");
        if (name == null || name.trim().isEmpty() ||
            email == null || email.trim().isEmpty() ||
            messageContent == null || messageContent.trim().isEmpty()) {
            request.setAttribute("errorMessage", "All fields are required!");
            request.getRequestDispatcher("Display.html").forward(request, response);
            return;
        }
        Message message = new Message();
        message.setName(name);
        message.setEmail(email);
        message.setMessage(messageContent);
        message.setCreatedAt(new Timestamp(System.currentTimeMillis()));
        boolean isSaved =  new MessageDAO().saveMessage(message);
        if (isSaved) {
            request.setAttribute("successMessage", "Your message has been sent successfully!");
            request.getRequestDispatcher("Display.html").forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Failed to send your message. Please try again.");
            request.getRequestDispatcher("Display.html").forward(request, response);
        }
    }
}
