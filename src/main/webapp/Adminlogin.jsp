<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
  
    <link rel="stylesheet" href="css/socialmedia.css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    <style>
       
        .error-msg {
            color: red;
            font-size: 0.9em;
            margin-top: -10px;
            margin-bottom: 10px;
            display: none; 
        }
        .input-error {
            border: 1px solid red;
        }

       
        .message-box {
            padding: 16px 24px;
            margin: 20px auto;
            width: 80%;
            max-width: 600px;
            text-align: center;
            background-color: #dc3545; /* Red color for error message */
            color: white;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            z-index: 50;
            font-size: 18px;
            opacity: 0;
            animation: slideDown 0.6s ease-out, fadeInOpacity 1s ease-in-out;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

    
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
        .close-btn {
            background-color: transparent;
            border: none;
            color: white;
            font-size: 24px;
            cursor: pointer;
            padding: 0;
            margin-left: 16px;
        }

        .close-btn:hover {
            opacity: 0.8;
        }
    </style>
      <link rel="stylesheet" href="css/Adminlogin.css">
</head>
<body>
    <% 
        String msg = (String) request.getParameter("msg");
        if (msg==null) { 
    %>
        <!-- Display error message box if login credentials are invalid -->
        <div class="message-box" id="alert-box">
            <span id="msg-content">Invalid username or password. Please try again.</span>
            <button class="close-btn" id="close-btn">&times;</button>
        </div>
    <% } %>

   
    <nav class="social">
        <ul>
            <li><a href="https://twitter.com/highflyer910">Twitter <i class="fa fa-twitter"></i></a></li>
            <li><a href="https://github.com/highflyer910">Github <i class="fa fa-github"></i></a></li>
            <li><a href="https://www.linkedin.com/in/teonamushambadze">LinkedIn <i class="fa fa-linkedin"></i></a></li>
        </ul>
    </nav>

    <!-- Login Section -->
    <section class="container">
        <div class="login-container">
            <div class="circle circle-one"></div>
            <div class="form-container">
                <img src="https://raw.githubusercontent.com/hicodersofficial/glassmorphism-login-form/master/assets/illustration.png" alt="illustration" class="illustration" />
                <h1 class="opacity">ADMIN LOGIN</h1>
                <form id="loginForm" action="log" method="post">
                    <input type="text" placeholder="USERNAME" name="aname" id="username">
                    <div class="error-msg" id="usernameError">Username is required.</div>

                    <input type="password" placeholder="PASSWORD" name="pass" id="password">
                    <div class="error-msg" id="passwordError">Password is required.</div>

                    <button type="submit" class="opacity">SUBMIT</button>
                </form>
                <div class="register-forget opacity">
                    <a href="Adminregister.jsp">Create an account?</a>
                </div>
            </div>
            <div class="circle circle-two"></div>
        </div>
    </section>


    <script>
        

        document.addEventListener('DOMContentLoaded', () => {
            const form = document.getElementById('loginForm');
            const fields = [
                {
                    element: document.getElementById('username'),
                    errorElement: document.getElementById('usernameError'),
                    validate: () => isNotEmptyAndNotSpaces(document.getElementById('username').value),
                    errorMessage: 'Username is required and cannot be just spaces.'
                },
                {
                    element: document.getElementById('password'),
                    errorElement: document.getElementById('passwordError'),
                    validate: () => isNotEmptyAndNotSpaces(document.getElementById('password').value),
                    errorMessage: 'Password is required and cannot be just spaces.'
                }
            ];

            form.addEventListener('submit', (event) => {
                let isValid = true;

                // Reset all errors
                fields.forEach(({ element, errorElement }) => resetError(element, errorElement));

                // Validate each field
                fields.forEach(({ element, errorElement, validate, errorMessage }) => {
                    if (!validate()) {
                        showError(element, errorElement, errorMessage);
                        isValid = false;
                    }
                });

               
                if (!isValid) {
                    event.preventDefault();
                }
            });
        });

        
        function isNotEmptyAndNotSpaces(value) {
            return value.trim().length > 0;
        }

       
        function resetError(input, errorElement) {
            input.classList.remove('input-error');
            errorElement.style.display = 'none';
            errorElement.textContent = '';
        }

        
        function showError(input, errorElement, message) {
            input.classList.add('input-error');
            errorElement.textContent = message;
            errorElement.style.display = 'block';
        }
         
         
    </script>
    <script type="text/javascript" src="Adminlogin.js"></script>

</body>
</html>
