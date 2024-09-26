<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Food App Signup</title>
 <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Arial', sans-serif;
      background-image: url('images/view-ready-eat-delicious-meal-go.jpg');
      background-size: cover;
      background-position: center;
      height:100vh;
      width:100vw;
      display: flex;
      justify-content: space-around;
      align-items: center;


    }

    .cane-container {
      height: 60vh;
      /* overflow: hidden; */
      position: relative;
      left: auto;
      margin-left:100px;
    }

    .cane {
      /* position: absolute; */
      left: 50%;
      transform: translateX(-50%);
      bottom: 170px;
      width: 400px;
      height: 400px;
      z-index: 2;
      transition: 1s;
      --left: 230px;
      display: flex;
    }

    .cane .pack {
      position: absolute;
      background: var(--bg) var(--left), url(images/mockup.png);
      background-size: auto 100%;
      width: 230px;
      aspect-ratio: 2/4;
      background-blend-mode: multiply;
      mask-image: url(images/mockup.png);
      mask-size: auto 100%;
      left: 50%;
      transform: translateX(50%);
      transition: 1s;
    }

    .cane-container .cane:hover {
      --left: -1000px;
      transform: translateX(-50%) translateY(-20%);
    }

    .cane-container .cane .pack:nth-child(2) {
      opacity: 0;
    }


    .cane-container .cane:hover .pack:nth-child(2) {
      opacity: 1;
    }
    h2{
      text-align: center;
      font-size: 20px;
      font-family: Georgia, 'Times New Roman', Times, serif;
      margin-left: 50px;
      color:#dadada;
    }

    .signup-container {
      width: 400px;
      left: 450px;
      padding: 20px;
      background: rgba(255, 255, 255, 0.9);
      border-radius: 10px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
      animation: fadeIn 1s ease-in-out;
      backdrop-filter: (blur)20px;
      -webkit-backdrop-filter: blur(20px);
      background-color: rgba(255, 255, 255, 0.3);
      padding: 50px;
      border-radius: 15px;
      margin-left: 620px;
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: translateY(-20px);
      }

      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 24px;
      color: #fcff33;
      font-family: Georgia, 'Times New Roman', Times, serif;
    }

    .form-container form {
      display: flex;
      flex-direction: column;
      backdrop-filter: (blur)10px;
      -webkit-backdrop-filter: blur(10px);
      background-color: rgba(255, 255, 255, 0.3);
      padding: 50px;
      border-radius: 15px;
    }

    .form-group {
      margin-bottom: 15px;

    }

    .form-group label {
      font-size: 20px;
      margin-bottom: 5px;
      color: whitesmoke;
      font-family: 'Times New Roman', Times, serif;

    }

    .form-group input,
    .form-group select {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
      outline: none;
      transition: border 0.3s ease;
    }

    .form-group input:focus,
    .form-group select:focus {
      border-color: #0fd5a1;
      border-radius: 2px;
    }

    .button-group {
      display: flex;
      justify-content: space-between;
    }

    button {
      padding: 10px 15px;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .submit-btn {
      background-color: #1ebd93;
      color: white;
    }

    .cancel-btn {
      background-color: #c64c3f;
      color: white;
    }


    .submit-btn:hover {
      background-color: #255d55;
    }

    .cancel-btn:hover {
      background-color: rgb(170, 17, 17);
    }
    .link{
    margin-left:70px;
    margin-top:20px;
    }
    .link a:hover{
       color:rgb(210, 39, 39);
    }
  </style>
</head>

<body>
  <div class="signup-container">
    <div class="form-container">
      <h1>Signup for Food App</h1>
      <form action="userSignup">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" name="name" placeholder="Enter your name" required>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Enter your email" required>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="pass" name="pass" placeholder="Enter your password" required>
        </div>
        <div class="form-group">
          <label for="role">Role</label>
          <select name="role" required>
            <option value="">Select Role</option>
            <option value="admin">Admin</option>
            <option value="branchmanager">Branch Manager</option>
            <option value="staff">Staff</option>
          </select>
        </div>
        <div class="button-group">
          <button type="submit" class="submit-btn">Submit</button>
          <button type="reset" class="cancel-btn">Cancel</button>
        </div>
       <div class="link">
       <a href="login.jsp"> Login?</a>
       </div>
      </form>
    </div>
  </div>

  <div class="cane-container">
   
    <div class="cane">
      <div class="pack" style="--bg: url(images/bg1.jpeg)"></div>
      <div class="pack" style="--bg: url(images/nauman-akram-barcha-frame-1.jpg)"></div>
    </div>
    <div>
    <h2>  Are You Hungry ??</h2>
    <h2> Ok Drink It..</h2>

    </div>
  </div>
</body>

</html>