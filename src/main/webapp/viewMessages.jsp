<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ganesh.bean.Message" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Messages</title>
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
        .no-messages {
            text-align: center;
            font-size: 18px;
            color: red;
        }
    </style>
    <link rel="stylesheet" href="css/borrowform.css">
</head>
<body>
<div class="theme-btn-container" style="margin-top:0px; right:1px; display: flex; flex-direction: column; gap: 6px;"></div>
    <h1> Messages</h1>
    <%
        List<com.ganesh.bean.Message> messages = (List<com.ganesh.bean.Message>) request.getAttribute("messages");

        if (messages != null && !messages.isEmpty()) {
    %>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Message</th>
                    <th>Created At</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (com.ganesh.bean.Message msg : messages) {
                %>
                    <tr>
                        <td><%= msg.getId() %></td>
                        <td><%= msg.getName() %></td>
                        <td><%= msg.getEmail() %></td>
                        <td><%= msg.getMessage() %></td>
                        <td><%= msg.getCreatedAt() %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    <%
        } else {
    %>
        <p class="no-messages">No messages found.</p>
    <%
        }
    %>
     <script type="text/javascript" src="js/bookBorrowForm.js"></script>
</body>
</html>
