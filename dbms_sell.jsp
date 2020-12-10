<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,com.mysql.jdbc.Driver" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<h1 align="center">BOOK MY_BUS.com</h1>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int bid=Integer.parseInt(request.getParameter("bid"));
int source=Integer.parseInt(request.getParameter("source"));
int des=Integer.parseInt(request.getParameter("destination"));

int fare=Integer.parseInt(request.getParameter("fare"));
int ts=Integer.parseInt(request.getParameter("ts"));
int rs=Integer.parseInt(request.getParameter("rs"));
Connection connect=null;
Statement statement=null;
//ResultSet rs=null;
try
{
	String url="jdbc:mysql://localhost:3308/dbmsproject";
String uname_sql="root";
String pass_sql="mysql@1997";
Class.forName("com.mysql.jdbc.Driver").newInstance();
connect=DriverManager.getConnection(url,uname_sql,pass_sql);
statement=connect.createStatement();
statement.executeUpdate("insert into sell values('"+bid+"','"+source+"','"+des+"',"+fare+","+ts+","+rs+")");
	
}
catch(Exception e)
{
}
out.println("YOUR DATA SUCCESSFUL ADDED");
%>
</body>
</html>     