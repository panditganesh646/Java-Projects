<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ganesh.bean.borrowedbookbean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Borrowed Books</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        h1 {
            text-align: center;
            color: #007BFF;
        }
        .message {
            text-align: center;
            font-size: 18px;
            color: red;
        }
    </style>
    <link rel="stylesheet" href="css/borrowform.css">
</head>
<body>
<script type="text/javascript" src="js/bookBorrowForm.js"></script>
   <div class="theme-btn-container" style="margin-top:0px; right:1px; display: flex; flex-direction: column; gap: 6px;"></div>
    <h1>Borrowed Books</h1>
    <%
        List<borrowedbookbean> borrowedBooks = (List<borrowedbookbean>) request.getAttribute("borrowedBooks");
            
        
        if (borrowedBooks != null && !borrowedBooks.isEmpty()) {
    %>
            <table>
                <thead>
                    <tr>
                        <th>Book Code</th>
                        <th>Book Name</th>
                        <th>Author</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Borrow Date</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (com.ganesh.bean.borrowedbookbean book : borrowedBooks) {
                    %>
                        <tr>
                            <td><%= book.getBcode() %></td>
                            <td><%= book.getBname() %></td>
                            <td><%= book.getBauthor() %></td>
                            <td><%= book.getPrice() %></td>
                            <td><%= book.getBqty() %></td>
                            <td><%= book.getBorrowDate() %></td>
                        </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
    <%
        } else {
    %>
            <p class="message">No books are currently available for borrowing.</p>
    <%
        }
    %>
    
</body>
</html>
