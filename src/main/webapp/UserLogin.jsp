<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<style>
    .error-msg {
        color: red;
        font-size: 0.9em;
        margin-top: -10px;
        margin-bottom: 10px;
        display: none; /* Hidden by default */
    }
    .input-error {
        border: 1px solid red;
    } 
</style>
<link rel="stylesheet" href="css/Adminlogin.css">
<link rel="stylesheet" href="css/socialmedia.css">
<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<nav class="social">
</head>
<body>
<nav class="social">
          <ul>
              <li><a href="https://twitter.com/highflyer910">Twitter <i class="fa fa-twitter"></i></a></li>
            <li><a href="https://github.com/highflyer910">Github <i class="fa fa-github"></i></a></li>
            <li><a href="https://www.linkedin.com/in/teonamushambadze">Linkedin <i class="fa fa-linkedin"></i></a></li>
              </ul>
      </nav>
          <ul>
              <li><a href="https://twitter.com/highflyer910">Twitter <i class="fa fa-twitter"></i></a></li>
            <li><a href="https://github.com/highflyer910">Github <i class="fa fa-github"></i></a></li>
            <li><a href="https://www.linkedin.com/in/teonamushambadze">Linkedin <i class="fa fa-linkedin"></i></a></li>
              </ul>
      </nav>
    <section class="container">
        <div class="login-container">
            <div class="circle circle-one"></div>
            <div class="form-container">
                <img src="https://raw.githubusercontent.com/hicodersofficial/glassmorphism-login-form/master/assets/illustration.png" alt="illustration" class="illustration" />
                <h1 class="opacity">User LOGIN</h1>
                <form id="loginForm" action="clog" method="post">
                    <input type="text" placeholder="USERNAME" name="cname" id="username">
                    <div class="error-msg" id="usernameError">Username is required.</div>

                    <input type="password" placeholder="PASSWORD" name="cpass" id="password">
                    <div class="error-msg" id="passwordError">Password is required.</div>

                    <button type="submit" class="opacity">SUBMIT</button>
                </form>
                <div class="register-forget opacity">
                    <a href="UserRegister.jsp">Create an account?</a>
                </div>
            </div>
            <div class="circle circle-two"></div>
        </div>
        <div class="theme-btn-container"></div>
    </section>
   
    <script>
        document.getElementById('loginForm').addEventListener('submit', function(event) {
            let isValid = true;

            const username = document.getElementById('username');
            const password = document.getElementById('password');

            const usernameError = document.getElementById('usernameError');
            const passwordError = document.getElementById('passwordError');

            usernameError.style.display = 'none';
            passwordError.style.display = 'none';
            username.classList.remove('input-error');
            password.classList.remove('input-error');
            if (username.value.trim() === '') {
                usernameError.style.display = 'block';
                username.classList.add('input-error');
                isValid = false;
            }
            if (password.value.trim() === '') {
                passwordError.style.display = 'block';
                password.classList.add('input-error');
                isValid = false;
            }
            if (!isValid) {
                event.preventDefault(); 
            }
        });
    </script>
     <script type="text/javascript" src="js/Adminlogin.js"></script>
</body>
</html>
