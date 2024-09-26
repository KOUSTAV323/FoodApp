<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
   
        * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: Georgia, 'Times New Roman', Times, serif;
      background-image: url('images/top-view-delicious-food-with-copy-space.jpg');
      background-size: cover;
      background-position: center;
      height:100vh;
      display: flex;
      justify-content: space-around;
      align-items: center;


    }

    .container{
        background-size:cover;
        height:100%;
        text-align:center;
        display:flex;
        align-items: center;
        justify-content: center;
        padding: 50px;
        
        
    }

    .login-form{
        background-color: ghostwhite;
        width:500px;
        height:auto;
        padding:50px;
        display:grid;	
        border-radius: 8px;
        text-align: left;
        font-size: 20px;

        animation: fadeIn 1s ease-in-out;
      backdrop-filter: (blur)20px;
      -webkit-backdrop-filter: blur(20px);
      background-color: rgba(255, 255, 255, 0.3);
      padding: 50px;
      border-radius: 15px;
    }

    input[type=text]{
        margin-bottom:20px;
        border-radius: 7px;
        padding:6px;
        margin-top:3px
    }
    input[type=email]{
        margin-bottom:20px;
        border-radius: 7px;
        padding:6px;
        margin-top: 3px;
    }
    input[type=password]{
        margin-bottom:20px;
        border-radius: 7px;
        padding:6px;
        margin-top: 3px;
    }
    
    .login{
        background-color: crimson;
        padding:10px;
        border:none;
        margin-top: 30px;
        margin-bottom: 30px;
        border-radius:5px;
        transition: 0.5s ease;
        font-size: 18px;
        font-family: Georgia, 'Times New Roman', Times, serif;
        font-weight: bold;
        
    }
    .login a{
        color:white;
        font-weight: bold;
        text-transform: uppercase;
        text-decoration: none;
        
    }
    .login:hover{
        background: rgb(255, 7, 7);

            box-shadow: 0 0 20px rgba(255, 7, 7, 0.8),
                        0 0 30px rgba(255, 7, 7, 0.6),
                        0 0 40px rgba(255, 7, 7, 0.4);
            
    }
    .forget{
        display:flex;
        align-items: center;
        justify-content: space-between;
    }
    
    .forget a{
        text-decoration: none;
        color:rgb(253, 208, 208);
        transition: 0.1s ease;
    }
    
    .forget a:hover {
        color: rgb(8, 161, 249);
    }
    .return a{
        text-decoration: underline;
        color:#dadada;
        transition: 0.1s ease;
    }
    .return a:hover{
        color: rgb(8, 161, 249);
    }
    h1{
    align-item: center;
    }
   
    </style>
</head>
<body>
    <div class="container"></div>
    
        <form class="login-form" action="login">
            <h2 style="color:#dadada">LOGIN</h2>
            <hr>
            <br>
            <br>
           
            Email :<input type="email" placeholder="Enter Email" required name="email">
            <br>
            Password :<input type="password" placeholder="Enter Password" name="pass" required>
            <button type="submit" class="login">Login</button>
            <br>
            <br>
            <hr>
            <br>
            <div class="forget">
                <div>
                <p>Forgot Password?</p>
                Click <a href="">here >></a>
                </div>
                <div>
                <p>Don't have an account?</p>
                Click <a href="http://localhost:8080/Food_App_By_Servlet/">here >></a>
                </div>
            </div>
            <br><br>
            <div class="return">
            <a href="index.html">Return to Home</a>
            </div>
        </form>
    
    </div>
    
    
</body>
</html>