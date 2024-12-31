package com.ganesh.servlets;
import java.io.IOException;
import com.ganesh.dao.BorrowedBookDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
@WebServlet("/borrowBook")
public class BorrowedBookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
    	String bcode = request.getParameter("bcode");
        boolean isBorrowed =new BorrowedBookDAO().borrowBook(bcode);
        if (isBorrowed) {
            request.setAttribute("message", "Book successfully borrowed.");
        } else {
            request.setAttribute("message", "Book not found or could not be borrowed.");
        }
        request.getRequestDispatcher("borrowbookResult.jsp").forward(request, response);
    }
}
