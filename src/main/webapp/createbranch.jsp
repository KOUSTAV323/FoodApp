<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Branch</title>
 <style>
        * {
           
           
            margin: 8px;
            padding: 0;
            
        }

        body {
            font-family: Arial, sans-serif;
            background-image: url(images/delicious-pizza-studio.jpg);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-size: cover;
            background-position: center;
     
        }

        .container {
            background: rgb(61 28 38 / 20%);
            border-radius: 16px;
            padding: 40px;
            max-width: 400px;
            width: 100%;
            backdrop-filter: blur(4px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.37);
           border: 1px solid rgba(255, 255, 255, 0.8);
       }



        legend {
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size: 26px;
            font-weight: bold;
            color: #dadada;
            text-align: center;
            margin-bottom: 40px;
        }

        label {
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size: 16px;
            color:white;
            font-weight: bold;

            
        }

        input[type="text"] {
            width: 100%;
            padding: 6px;
            margin-bottom: 20px 0;
            border: none;
           border-bottom: 2px solid #dadada;
            background: transparent;
            font-size: 14px;
        }

        input[type="password"] {
            width: 100%;
            padding: 6px;
            margin-bottom: 20px 0;
            border: none;
           border-bottom: 2px solid #dadada;
            background: transparent;
            font-size: 14px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            margin: 10px 5px;
            border: none;
            border-radius: 8px;
            background: #1dc91d;
            color: white;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="reset"] {
            padding: 10px 20px;
            margin: 10px 5px;
            border: none;
            border-radius: 8px;
            background: red;
            color: white;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background 0.3s ease, box-shadow 0.3s ease;
            
        }

        input[type="submit"]:hover {
            background: rgb(49,242,49);

            box-shadow: 0 0 20px rgba(49,242,49, 0.8),
                        0 0 30px rgba(49,242,49, 0.6),
                        0 0 40px rgba(49,242,49, 0.4);
            
        }

        input[type="reset"]:hover {
            background: rgba(255,0,0, 0.9);
            box-shadow: 0 0 20px rgba(255,0,0, 0.8),
                        0 0 30px rgba(255, 0,0, 0.6),
                        0 0 40px rgba(255, 0,0, 0.4);
        }

        input[type="submit"]:active,
        input[type="reset"]:active {
            background: rgba(255, 255, 255, 0.8);
        }
        .change{
        justify-content: space-between;
        align-items: ;
        display: flex;
        }
    </style>
</head>
<body>
<% 
User admin = (User) session.getAttribute("admin");
if(admin!=null){
%>


    <form class="container" action="createbranch">
        <legend>CREATE BRANCH</legend>

        <label for="bn">Branch Name:</label>
        <input type="text" id="bn" name="bn" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>

        <label for="mob">Phone Number:</label>
        <input type="text" id="mob" name="mob" required>

   <div class="change">
        <input type="submit" value="CREATE BRANCH">
        <input type="reset" value="CANCEL">
        </div>
    </form>
    <%
}else{
	response.getWriter().print("<h1>Do Login First</h1>");
	request.getRequestDispatcher("login.jsp").include(request, response);
}

%>

</body>
</html>
