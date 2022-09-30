<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<style>
.a{
width : 400px;
height : 200px;
border : 3px solid orange;
padding: 30px 30px 20px 60px;
background-color : white;
margin: 25px 200px 0px 300px ;
}
.btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 25%;
  opacity: 0.9;
}
</style>
</head>
<body bgcolor="grey">
<h1 style="margin: 25px 200px 0px 300px;">Registration Form</h1>
<form method="post" action="First.jsp" class="a">
Name   :&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="First" id="First"><br><br>
Age    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="Text" name="Last" id="Last"><br><br>
Email  :&nbsp;&nbsp;&nbsp;  &nbsp;   <input type="email" name="Email" id="Email"><br><br>
Password :&nbsp;<input type="Password" name="Password" id="Password"><br><br>
<input type="Submit" class="btn">
</form>
<br>
<p style="margin: 25px 200px 0px 300px;">
Already Have a account
<a href="Login.jsp" >
 <button>Login</button>
</a>
</p>
</body>
</html>