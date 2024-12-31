package com.ganesh.servlets;

import java.io.IOException;
import java.util.List;

import com.ganesh.bean.borrowedbookbean;
import com.ganesh.dao.viewborrowedBookDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
@WebServlet("/viewborrowedBook")
public class viewBorrowedBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
    	List<borrowedbookbean> borrowedBooks = new viewborrowedBookDao().getBorrowedBooks();
     if(borrowedBooks!=null) {
    	 request.setAttribute("borrowedBooks", borrowedBooks);
         request.getRequestDispatcher("borrowedBooks.jsp").forward(request, response);
     }else {
    	 request.setAttribute("borrowedBooks", "No Books Available");
         request.getRequestDispatcher("borrowedBooks.jsp").forward(request, response);
     }
   }
}

