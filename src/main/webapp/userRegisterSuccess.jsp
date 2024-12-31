<!DOCTYPE html>
<html>
<head>
    <title>Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e9f7ef;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .message-box {
            text-align: center;
            background: #d4edda;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
        }
        .message-box h1 {
            color: #155724;
        }
        .message-box a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            text-decoration: none;
            background: #28a745;
            color: white;
            border-radius: 5px;
        }
        .message-box a:hover {
            background: #218838;
        }
    </style>
      <link rel="stylesheet" href="css/borrowform.css">
</head>
<body>
   <div class="theme-btn-container" style="margin-top:0px; right:1px; display: flex; flex-direction: column; gap: 6px;"></div>
    <div class="message-box">
        <h1>Registration Status</h1>
        <p style="color:black;">${msg}</p>
        <a href="UserLogin.jsp">Go to Login</a>
    </div>
     <script type="text/javascript" src="js/bookBorrowForm.js"></script>
</body>
</html>
