<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Borrow a Book</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/borrowform.css">
</head>
<body>
      <script type="text/javascript" src="js/bookBorrowForm.js"></script>
       <div class="theme-btn-container"></div>
   <div class="container">
        <div class="form-container">
            <h2>Borrow a Book</h2>
            <form action="borrowBook" method="POST" onsubmit="return validateForm()">
                <label for="bcode">Book Code:</label>
                <input type="text" id="bcode" name="bcode" required>
                <input type="submit" value="Borrow Book">
            </form>
        </div>
    </div>  
    <%@include file="borrowbookResult.jsp" %>
</body>
</html>