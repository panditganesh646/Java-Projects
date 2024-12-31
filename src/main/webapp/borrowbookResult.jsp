<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Borrow Result</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
   
    <style>
    
        

        body {
            margin: 0;
            font-family: "Poppins", sans-serif;
            background: var(--background);
            color: var(--color);
            letter-spacing: 1px;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            flex-direction: column;
        }

        h2 {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 1.5rem;
            color: var(--color);
        }

        p {
            font-size: 1.2rem;
            font-weight: bold;
            color: var(--color);
            background-color: rgba(255, 255, 255, 0.05);
            padding: 1rem;
            border-radius: 5px;
            box-shadow: 0 0 16px 1px rgba(0, 0, 0, 0.2);
        }
    </style>
   <link rel="stylesheet" href="css/borrowform.css">
</head>
<body>
   <div class="theme-btn-container" style="margin-top:0px; right:1px; display: flex; flex-direction: column; gap: 6px;"></div>
    <div class="container">
        <h2>Borrowing Status</h2>
        <p>${message}</p>
    </div>
     <script type="text/javascript" src="js/bookBorrowForm.js"></script>
</body>
</html>
