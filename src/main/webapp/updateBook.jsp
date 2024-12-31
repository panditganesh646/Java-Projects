<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  body {
    font-family: 'Arial', sans-serif;
    background-color: #000000;
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
  }

  .message {
    font-size: 24px;
    font-weight: bold;
    color: #000000;
    background-color:white;
    padding: 20px 30px;
    border-radius: 10px;
    text-align: center;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
    position: absolute;
    top: 40%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-family: 'Poppins', sans-serif;
    text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.4);
    animation: fadeIn 2s ease-in-out;
  }

  @keyframes fadeIn {
    from {
        opacity: 0;
        transform: translate(-50%, -60%);
    }
    to {
        opacity: 1;
        transform: translate(-50%, -50%);
    }
  }

  @media (max-width: 768px) {
    .message {
        font-size: 20px;
        padding: 15px 20px;
    }
  }
</style>
</head>
<body>

  <div class="message">
    <%
        out.println((String) request.getAttribute("msg"));
    %>
  </div>
 <a href="view" style="font-size: 18px; font-weight: bold; color: #ffffff; background-color: #007bff; padding: 20px 20px; text-decoration: none; border-radius: 5px; transition: background-color 0.3s ease;">View Books</a>


</body>
</html>
