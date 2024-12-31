<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/borrowform.css">
</head>
<body style="margin: 0; padding: 0; height: 100vh; background-color: #1a202c; color: #f7fafc; display: flex; justify-content: center; align-items: center; font-family: Arial, sans-serif;">
  <script type="text/javascript" src="js/bookBorrowForm.js"></script>
  <div class="theme-btn-container" style="margin-top:0px; right:1px; display: flex; flex-direction: column; gap: 6px;"></div>
 <form action="returnBorrowedBook" method="post" style="background-color: #2d3748; padding: 20px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); width: 100%; max-width: 400px; text-align: center;">
        <h2 style="margin-bottom: 20px; font-size: 1.5em;">Return Borrowed Book</h2>
        <div style="margin-bottom: 15px;">
            <label for="borrowedBookId" style="display: block; margin-bottom: 5px; font-weight: bold; color: #e2e8f0;">Enter Borrowed Book ID:</label>
            <input type="text" id="borrowedBookId" name="bcode" placeholder="Borrowed Book code" required style="width: 100%; padding: 10px; border: 1px solid #4a5568; border-radius: 4px; background-color: #1a202c; color: #f7fafc; box-sizing: border-box;">
        </div>
        <button type="submit" style="width: 100%; padding: 10px; background-color: #e53e3e; color: #f7fafc; border: none; border-radius: 4px; font-weight: bold; cursor: pointer; transition: background-color 0.3s;">
            Return Borrowed Book
        </button>
    </form>
</body>
</html>