<%@page import="com.dto.User"%>
<%@page import="com.dto.Branch"%>
<%@page import="com.dao.BranchDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Branch</title>
</head>
<body>
<% 

int branchId=Integer.parseInt(request.getParameter("id"));
//fetch branch based on id
BranchDao dao=new BranchDao();
Branch branch=dao.findBranchById(branchId);

%>

<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-image: url(images/pexels-nietjuh-1693654.jpg);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-size: cover;
            background-position: center;
     
        }

        .container {
            background: rgba(230, 106, 143, 0.2);
            border-radius: 16px;
            padding: 40px;
            max-width: 400px;
            width: 100%;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.37);
            border: 1px solid rgba(255, 255, 255, 0.18);
        }

        legend {
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size: 26px;
            font-weight: bold;
            color: white;
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size: 16px;
            color: black;
            font-weight: bold;

            
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
            backdrop-filter: blur(4px);
            background: rgba(255, 255, 255, 0.5);
            color: #333;
            font-size: 14px;
        }

        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
            backdrop-filter: blur(4px);
            background: rgba(255, 255, 255, 0.5);
            color: #333;
            font-size: 14px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            margin: 10px 5px;
            border: none;
            border-radius: 8px;
            background: green;
            color: #dadada;
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
            color: #dadada;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background 0.3s ease, box-shadow 0.3s ease;
            
        }

        input[type="submit"]:hover {
            background: rgb(0,128,0);

            box-shadow: 0 0 20px rgba(0,128,0, 0.8),
                        0 0 30px rgba(0,128,0, 0.6),
                        0 0 40px rgba(0,128,0, 0.4);
            
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
    </style>
</head>
<body>
<% 
User admin = (User) session.getAttribute("admin");
if(admin!=null){
%>


    <form class="container" action="updateBranch">
        <legend>UPDATE BRANCH</legend>
        
        <label for="bn">Id:</label>
        <input type="text" id="bn" name="id" value="<%=branch.getId() %>" readonly="readonly" required>

        <label for="bn">Branch Name:</label>
        <input type="text" id="bn" name="bn" value="<%=branch.getBranchname() %>" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value="<%=branch.getAddress() %>" required>

        <label for="mob">Phone Number:</label>
        <input type="text" id="mob" name="mob" value="<%=branch.getPhonenumber() %>" required>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="<%=branch.getEmail() %>" required>

        <label for="pass">Password:</label>
        <input type="password" id="pass" name="pass" value="<%=branch.getPassword() %>" required>

        <label for="bmn">Branch Manager Name:</label>
        <input type="text" id="bmn" name="bmn" value="<%=branch.getBranchmanagername() %>" required>

        <input type="submit" value="UPDATE BRANCH">
        <input type="reset" value="CANCEL">
    </form>

</body>
</html>
 <%
}else{
	response.getWriter().print("<h1>Do Login First</h1>");
	request.getRequestDispatcher("login.jsp").include(request, response);
}

%>

</body>
</html>