<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notification Page</title>
    <style type="text/css">
      /* General reset and styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

/* Styling for the message box */
.message-box {
    padding: 20px;
    margin: 20px auto;
    width: 80%;
    max-width: 600px;
    text-align: center;
    border-radius: 10px;
    font-size: 18px;
    color: #fff;
    background-color: #28a745; /* Green color for success */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    position: fixed;
    top: 20px;
    left: 50%;
    transform: translateX(-50%);
    z-index: 1000;
    animation: slideDown 0.6s ease-out, fadeInOpacity 1s ease-in-out;
    opacity: 0;
    animation-fill-mode: forwards;
}

/* Animation for the message box */
@keyframes slideDown {
    from {
        transform: translateX(-50%) translateY(-50px);
        opacity: 0;
    }
    to {
        transform: translateX(-50%) translateY(0);
        opacity: 1;
    }
}

@keyframes fadeInOpacity {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

/* Styling for navigation links */
a {
    display: inline-block;
    margin: 10px 0;
    text-decoration: none;
    color: #fff;
    background-color: #007bff;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 16px;
    text-align: center;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

a:hover {
    background-color: #0056b3;
    transform: scale(1.1);
}
      
    
    
    </style>
</head>
<body>
    <% 
        String msg = (String) request.getAttribute("msg");
        if (msg != null) { 
    %>
        <div class="message-box" role="alert">
            <%= msg %>
        </div>
    <% } %>
</body>
</html>
