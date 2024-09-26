<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        html,
        body {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('images/delicious-pizza-studio.jpg') no-repeat center center/cover;
        }

        .button-container {
            display: flex;
            gap: 800px; /* Space between the two buttons */
        }

        .glow-on-hover {
            width: 220px;
            height: 150px;
            border: none;
            outline: none;
            font-size: 24px;
            font-family: Georgia, 'Times New Roman', Times, serif;
            color: #fff;
            background: #2a058e;
            cursor: pointer;
            position: relative;
            z-index: 0;
            border-radius: 10px;
            display: flex;
            align-items: center; /* Center items vertically */
            justify-content: center; /* Center items horizontally */
        }

        .button-content {
            display: flex;
            align-items: center; /* Center align icon and text vertically */
        }

        .glow-on-hover i {
            position: absolute;
            left: 20px; /* Position from the left */
            top: 50%; /* Center vertically */
            transform: translateY(-50%); /* Adjust for vertical centering */
            font-size: 30px; /* Size of the icon */
            color: #fff; /* Color of the icon */
        }

        .button-text {
            margin-left: 50px; /* Add space to the left of the text for the icon */
        }

        .glow-on-hover:before {
            content: '';
            background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
            position: absolute;
            top: -2px;
            left: -2px;
            background-size: 400%;
            z-index: -1;
            filter: blur(5px);
            width: calc(100% + 4px);
            height: calc(100% + 4px);
            animation: glowing 20s linear infinite;
            opacity: 0;
            transition: opacity 0.3s ease-in-out;
            border-radius: 10px;
        }

        .glow-on-hover:active {
            color: #000;
        }

        .glow-on-hover:active:after {
            background: transparent;
        }

        .glow-on-hover:hover:before {
            opacity: 1;
        }

        .glow-on-hover:after {
            z-index: -1;
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            background: #2a058e;
            left: 0;
            top: 0;
            border-radius: 10px;
        }

        @keyframes glowing {
            0% { background-position: 0 0; }
            50% { background-position: 400% 0; }
            100% { background-position: 0 0; }
        }

        .log{
 --color: #da1515;
 padding: 0.8em 1.7em;
 background-color: transparent;
 border-radius: .2em;
 position: absolute;
 top:25px;
 right:55px;
 overflow: hidden;
 cursor: pointer;
 transition: .5s;
 font-weight: 400;
 font-size: 17px;
 border: 1px solid;
 font-family: inherit;
 text-transform: uppercase;
 color: #b3eedf;
 z-index: 1;
}
.log a{
    color:#dadada;
}

.log::before, .log::after {
 content: '';
 display: block;
 width: 50px;
 height: 50px;
 transform: translate(-50%, -50%);
 position: absolute;
 border-radius: 50%;
 z-index: -1;
 background-color: var(--color);
 transition: 1s ease;
}

.log::before {
 top: -1em;
 left: -1em;
}

.log::after {
 left: calc(100% + 1em);
 top: calc(100% + 1em);
}

.log:hover::before, .btn2:hover::after {
 height: 410px;
 width: 410px;
}

.log:hover {
 color: rgb(10, 25, 30);
}

.log:active {
 filter: brightness(.8);
}

    </style>
</head>
<body>
<%
User admin = (User) session.getAttribute("admin");
if(admin!=null){
%>
    <div class="log">
        <a href="logout">LOGOUT</a>
    </div>
    <div class="button-container">
        <div class="btn1">
        <a href="createbranch.jsp">
            <button class="glow-on-hover" type="button">
                <div class="button-content">
                    <i class="fas fa-plus"></i>
                    <div class="button-text">
                        <p>CREATE</p>
                        <p>BRANCH</p>
                    </div>
                </div>
            </button>
            </a>
        </div>
        <div class="btn2">
           <a href="AdminDashboard.jsp"><button class="glow-on-hover" type="button">
                <div class="button-content">
                    <i class="fas fa-search"></i>
                    <div class="button-text">
                        <p>FIND</p>
                        <p>ALL</p>
                    </div>
                </div>
            </button>
            </a>
        </div>
    </div>
   <%
}else{
	response.getWriter().print("<h1>Do Login First</h1>");
	request.getRequestDispatcher("login.jsp").include(request, response);
}

%>
</body>
</html>
