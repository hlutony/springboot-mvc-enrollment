<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <style>
    body{
    	font-family: arial, sans-serif;
    }
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
        
        .container {
  padding: 16px;
  width: 500px;
  margin:auto;
}
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav button {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav button:hover {
  background-color: #ddd;
  color: black;
}

.topnav button.active {
  background-color: #04AA6D;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav button:not(:first-child) {display: none;}
  .topnav button.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive button {
    float: none;
    display: block;
    text-align: left;
  }
}
    </style>
</head>
<body>


<div class="topnav" id="myTopnav">
<form action="/programs" method="GET">
  <button class="active" type="submit" style="display:inline-block;width:auto">Programs</button>
    </form>
    <form action="/profile" method="GET">
  <button class="active" type="submit" style="display:inline-block;width:auto">My profile</button>
    </form>
        <form action="/myEnrollment" method="GET">
  <button class="active" type="submit" style="display:inline-block;width:auto">My profile</button>
    </form>
    
      <form action="/logout" method="POST" style="floaing:right">
  <button class="active" type="submit" style="display:inline-block;width:auto">Log out</button>
    </form>

  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>

</div>


<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>


<div class="container">

<h1>Welcome <span> ${userName}</span></h1>

    <h2>You select:</h2>

    <table>
        <tr>
            <th>Code</th>
            <th>Name</th>
            <th>Duration</th>
            <th>Fee</th>
        </tr>


            <tr>
                <td>${program.programCode}</td>
                <td>${program.programName}</td>
                <td>${program.duration}</td>
                <td> <fmt:formatNumber value="${program.fee}" type="currency"/></td>
            </tr>

    </table>
     <img src="https://i0.wp.com/worldscholarshipforum.com/wealth/wp-content/uploads/2020/09/How-do-Credit-Card-Companies-Make-Money.jpg?fit=970%2C545&ssl=1" alt="Avatar" style="width:100%">
    

<form action="/makePayment" method="POST" style="margin:16px">
  <label for="card"><b>Card Number</b></label>
    <input type="text" placeholder="Enter Card Number" name="card" id="card" required>
  <button type="submit">Select and Pay</button>
  
</form>

</div>

</body>