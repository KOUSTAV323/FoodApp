<%@page import="com.dto.Branch"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dasboard</title>
    <style>
        /* Styling for the body and background image */
        body {
            font-family: Georgia, 'Times New Roman', Times, serif;
            margin: 0;
            padding: 0;
            background: url('images/pexels-pixabay-36489.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content:center;
            align-items: top;
            height: 100vh;

            
        
        }

        .col {
            color: white;  /* Inside color */
            text-shadow: 
                -1px -1px 0 black,  /* Top-left shadow */
                 1px -1px 0 black,  /* Top-right shadow */
                -1px  1px 0 black,  /* Bottom-left shadow */
                 1px  1px 0 black;  /* Bottom-right shadow */
        }

        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.2); /* darken slightly */
            backdrop-filter: blur(5px); /* Apply the blur effect */
            z-index: -1; /* Keep it behind the content */
        }

        /* Styling for the table container */
        .table-container {
            
            border-radius: 10px;
            
            padding: 20px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.25);

        }

        /* Styling for the table */
        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 15px;
            overflow: hidden;
            
        }

        th{
            font-size: 18px;
            padding: 15px;
            text-align: left;
            color:rgb(246, 240, 252);
        }

        td {
            font-weight: bold;
            padding: 15px;
            text-align: center;
            color: #dadada;;
            font-family: Arial, Helvetica, sans-serif;
        }

        th {
            background: rgb(112,112,112);
        }

        td {
            background: rgba(255, 255, 255, 0.1);
        }

        /* Hover effect on table rows */
        tr:hover td {
            background: rgba(255, 255, 255, 0.2);
        }

        /* Buttons for Update and Delete */
        .btn {
            padding: 8px 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-update {
            background-color:rgb(58, 236, 58);
            color: white;
        }
        
         .btn-update:hover {
            background:rgb(58, 236, 58);

            box-shadow: 0 0 20px rgba(58, 236, 58, 0.8),
                        0 0 30px rgba(58, 236, 58, 0.6),
                        0 0 40px rgba(58, 236, 58, 0.4);
        }

        .btn-delete {
            background-color:rgb(251, 20, 20);
            color: white;
        }
        
                .btn-delete:hover {
            background:rgb(251, 20, 20);

            box-shadow: 0 0 20px rgba(251, 20, 20, 0.8),
                        0 0 30px rgba(251, 20, 20, 0.6),
                        0 0 40px rgba(251, 20, 20, 0.4);
        }

        /* Media Query for responsiveness */
        @media (max-width: 768px) {
            th, td {
                padding: 10px;
            }
        }
       
        h1{
        color:#dadada;
        }
        .btn2{
 --color: #00A97F;
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
.btn2 a{
    color:#dadada;
}

.btn2::before, .btn2::after {
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

.btn2::before {
 top: -1em;
 left: -1em;
}

.btn2::after {
 left: calc(100% + 1em);
 top: calc(100% + 1em);
}

.btn2:hover::before, .btn2:hover::after {
 height: 410px;
 width: 410px;
}

.btn2:hover {
 color: rgb(10, 25, 30);
}

.btn2:active {
 filter: brightness(.8);
}

.button-container {
    display: flex;
    justify-content: flex-end; /* Align buttons to the right */
    gap:20px; /* Add some space below the buttons */
}

             
        
            
    </style>
</head>
<body>


<!--java code-->
<%
User admin=(User)session.getAttribute("admin");
List<Branch>listOfBranch=admin.getBranchs();
%>


    <div class="table-container">
    
    <h1>Admin Name : <%= admin.getName()  %></h1>
    <div class="button-container">
   <div class="btn2"><a href="createbranch.jsp">ADD BRANCH</a></div> 
   <div class="btn2"><a href="logout">LOGOUT</a></div> 
   </div>
   
       <table>
              <tr class="col">
                    <th>S.No</th>
                    <th>Branch Id</th>
                    <th>Branch Name</th>
                    <th>Branch Address</th>
                    <th>Branch Contact Number</th>
                    <th>Branch Email</th>
                    <th>Branch Manager Name</th>
                    <th>UPDATE</th>
                    <th>DELETE</th>
                </tr>

<!-- JAVA CODE -->
<%
int i=1;
for(Branch b:listOfBranch){
%>
<tr> 
<td><%=i++  %></td>
<td><%=b.getId() %></td>
<td><%=b.getBranchname() %></td>
<td><%=b.getAddress() %></td>
<td><%=b.getPhonenumber()%></td>
<td><%=b.getEmail()%></td>
<td><%=b.getBranchmanagername()%></td>
<td><button class="btn btn-update"><a href="updateBranch.jsp?id=<%=b.getId()%>">Update</a></button></td>
<td><button class="btn btn-delete"><a href="deleteBranch?id=<%=b.getId()%>">Delete</a></button></td>

</tr>
<% } %>

</table>
    </div>
</body>
</html>
