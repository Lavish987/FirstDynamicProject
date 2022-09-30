<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
</head>
<body>
<%
String First=request.getParameter("First");
int Age=Integer.parseInt(request.getParameter("Last"));
String Email=request.getParameter("Email");
String Password=request.getParameter("Password");
%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
try{  
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");  
	if (!con.isClosed())
		out.println("Successfully connected connection");
	out.println("<BR>");
	PreparedStatement ps=con.prepareStatement("Insert into user values(?,?,?,?)");
	ps.setString(1,First);
	ps.setInt(2,Age);
	ps.setString(3,Email);
	ps.setString(4,Password);
	int rs=ps.executeUpdate();
	Boolean z=false;
	if (rs>0){
		z=true;
	}
	if(z){
		
		out.println("Record Inserted");
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
<form method="Post" action="Delete.jsp">
<h1> Delete the Record </h1>
Enter the Email id :
<input type="email" id="Email1" name="Email1">
<input type="submit">
</form>
</body>
</html>