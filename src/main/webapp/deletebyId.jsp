<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  .message {
    font-size: 24px; 
    font-weight: bold; 
    color: #000000; 
    background-color: #ffffff;
    padding: 20px 30px; 
    border-radius: 10px; 
    text-align: center; 
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
    position: absolute; 
    top: 50%; 
    left: 50%; 
    transform: translate(-50%, -50%); 
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
</style>
<link rel="stylesheet" href="css/borrowform.css">
</head>
<body>
 <script type="text/javascript" src="js/bookBorrowForm.js"></script>
  <div class="theme-btn-container" style="margin-top:0px; right:1px; display: flex; flex-direction: column; gap: 6px;"></div>
  <div class="message">
    <%
        out.println((String) request.getAttribute("msg"));
    %>
</div>
</body>
</html>