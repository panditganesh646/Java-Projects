<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ganesh.bean.BookBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Books</title>
    
    <!-- External Styles -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css" rel="stylesheet"> <!-- For icons -->

    <style>
        :root {
            --background: #1a1a2e;
            --primary-color: #0f3460;
            --secondary-color: #6c757d;
            --highlight-color: #007bff;
            --text-color: #f8f9fa;
        }

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            box-sizing: border-box;
            font-family: "poppins", sans-serif;
            background: var(--background);
            color: var(--text-color);
            letter-spacing: 1px;
            transition: background 0.2s ease;
        }

        a {
            text-decoration: none;
            color: var(--text-color);
        }

        h1 {
            font-size: 2.5rem;
            color: var(--highlight-color);
            text-align: center;
            margin-top: 20px;
            font-weight: 600;
        }

        .message {
            text-align: center;
            margin: 20px auto;
            color: #dc3545;
            font-size: 1.2em;
        }

        /* Table Styling */
        table {
            width: 90%;
            max-width: 1000px;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ddd;
            font-size: 1.1rem;
        }

        th {
            background-color: var(--highlight-color);
            color: var(--text-color);
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e8f5ff;
        }

        td {
            color: var(--primary-color);
        }

        .book-icon {
            font-size: 1.5rem;
            color: var(--highlight-color);
            margin-right: 10px;
        }

        .no-books {
            text-align: center;
            color: var(--secondary-color);
            font-size: 1.2em;
            padding: 20px;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            table {
                width: 100%;
            }

            h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
   

    <h1><i class="fa fa-book"></i> All Books</h1>

  
    <%
        String message = (String) request.getAttribute("msg");
        if (message != null) {
    %>
    <p class="message"><%= message %></p>
    <% } %>

    
    <table>
        <thead>
            <tr>
                <th><i class="fa fa-id-badge"></i> ID</th>
                <th><i class="fa fa-book"></i> Title</th>
                <th><i class="fa fa-user"></i> Author</th>
                <th><i class="fa fa-tag"></i> Price</th>
                <th><i class="fa fa-cogs"></i> Qty</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<BookBean> books = (List<BookBean>) request.getAttribute("books");
                if (books != null && !books.isEmpty()) {
                    for (BookBean book : books) {
            %>
            <tr>
                <td><%= book.getBcode() %></td>
                <td><%= book.getBname() %></td>
                <td><%= book.getbAuthor() %></td>
                <td>₹<%= book.getPrice() %></td>
                <td><%= book.getBqty() %></td>
            </tr>
            <%
                    }
                } else if (message == null) {
            %>
            <tr>
                <td colspan="5" class="no-books">No books available.</td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
