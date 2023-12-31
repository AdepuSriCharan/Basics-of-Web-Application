<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            overflow: hidden;
            background-color: #121212;
            color: #fff;
        }

        #sidebar {
            width: 20%;
            background-color: #333;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            z-index: 2;
        }

        #main-content {
            flex: 1;
            padding: 20px;
            background-color: #1f1f1f;
            overflow: hidden;
            transition: margin-left 0.3s;
        }

        button {
            font-size: 18px;
            margin: 10px;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            background-color: #555;
            color: #fff;
            width: 100%;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #777;
        }

        h2, p {
            margin-bottom: 10px;
            color: #4caf50;
        }

        label {
            margin-bottom: 15px;
            display: block;
        }

        input[type="text"], input[type="password"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #4caf50;
            border-radius: 4px;
            box-sizing: border-box;
            background-color: #333;
            color: #fff;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .form-container {
            background-color: #1f1f1f;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            margin: 0 auto;
        }
        .eye-icon {
            position: absolute;
            top: 50%;
            right: 5px;
            transform: translateY(-50%);
            cursor: pointer;
        }
    </style>

    <script>
        function validateForm() {
            var username = document.forms["loginForm"]["uname"].value;
            if (username.indexOf('@') === -1) {
                alert("Username must contain '@'");
                return false;
            }
            return true;
        }

        function togglePasswordVisibility() {
            var passwordInput = document.getElementById("passwordInput");
            var eyeIcon = document.getElementById("eyeIcon");

            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                eyeIcon.src = "https://img.icons8.com/android/24/000000/invisible.png";
            } else {
                passwordInput.type = "password";
                eyeIcon.src = "https://img.icons8.com/android/24/000000/visible.png";
            }
        }
    </script>
</head>
<body>



<div id="main-content">
    <div class="form-container">
        <h2>Sign In</h2>
        <form id="loginForm" action="login-servlet" method="post" onsubmit="return validateForm()">
    <label>
        <span>Enter Username:</span>
        <input type="text" name="uname">
    </label>

    <label>
        <span>Enter Password:</span>
        <input type="password" name="upassword" id="passwordInput">
        <img src="https://img.icons8.com/android/24/000000/visible.png" class="eye-icon" id="eyeIcon" onclick="togglePasswordVisibility()">
    </label>

    <input type="submit" value="Login">
        </form>
    </div>
</div>
</body>
</html>
