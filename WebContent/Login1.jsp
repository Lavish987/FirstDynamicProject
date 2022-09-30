<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<%response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = Expire.jsp");%>
</head>
<body>
<%
String Email=request.getParameter("Email");
String Password=request.getParameter("Password");
request.getSession().setAttribute("Email1",Email);
%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
try{  
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");  
	Statement stmt=con.createStatement();
	String query="select * from user where email='"+Email+"' and Password='"+Password+"'";
	ResultSet rs1=stmt.executeQuery(query);
	String u = (String) request.getSession().getAttribute("Email1");
	if (u!=null){
	if(rs1.next()){
		out.println("Login Successful");
		out.println("<BR>");
		out.println("Welcome "+Email);
		
	%>
<br>
<a href="Logout.jsp">
<button>Logout</button>
</a>
<% 	
	}else{
		response.sendRedirect("Login.jsp");
	}
	}else if(u==null){
		response.sendRedirect("Expire.jsp");
	}
}catch(Exception e){ out.println("Exception "+e.getMessage());}  
	
%>
</body>
</html>