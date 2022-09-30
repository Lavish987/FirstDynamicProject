<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Page</title>
</head>
<body>
<%
String Email=request.getParameter("Email1");
%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
try{  
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root",""); 
	Statement stmt1=con.createStatement();
	String query1="Delete from user where email='"+Email+"';";
	int rs=stmt1.executeUpdate(query1);
	Boolean z=false;
	if(rs>0){
		z=true;
	}
	if(z){
		
		out.println("Record Deleted");
		out.println("<BR>");
	}
	Statement stmt=con.createStatement();
	String query="Select * from user";
	ResultSet rs1=stmt.executeQuery(query);
	while(rs1.next()){
		String a=rs1.getString(1);
		int b=rs1.getInt(2);
		String c=rs1.getString(3);
		String d=rs1.getString(4);
		
		out.println(" Name = "+a+" Age = "+b+" Email = "+c+" Password = "+d+".");
		out.println("<BR>");
		
		
		
	}
}catch(Exception e){ out.println("Exception "+e.getMessage());}  
	
%>
</body>
</html>