package com.ganesh.servlets;

import java.io.IOException;
import com.ganesh.dao.DeleteBookDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/deleteById")
public class DeleteBookServlet extends HttpServlet{
         public DeleteBookDao dd = null;
         @Override
         public void init()throws ServletException{
        	   dd = new DeleteBookDao();
         }
        @Override
        protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
        	
        	HttpSession hs = req.getSession();
            if (hs == null) {
    			req.setAttribute("msg", "Session Expired..!");
    			req.getRequestDispatcher("Msg.jsp").forward(req, res);

    		}else {
    			 String bookcode = req.getParameter("bcode");
       	      int k = dd.deleteBook(bookcode);
       	      if(k>0) {
          	    	    req.setAttribute("msg", "Book Deletion Successfull..!");
       	    	    req.getRequestDispatcher("deletebyId.jsp").include(req, res);
       	    	    
       	      }else {
     	    	    req.setAttribute("msg", "Book Deletion Successfull..!");
       	         req.getRequestDispatcher("deletebyId.jsp").include(req, res);
       	      }
    		}
        	     
        	      
        }
}
