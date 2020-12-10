<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,com.mysql.jdbc.Driver" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">BOOK MY_Car.com</h1>
<%

Connection connect=null;
Statement st=null;
ResultSet rs=null;
try
{
	String url="jdbc:mysql://localhost:3308/dbmsproject";
String uname_sql="root";
String pass_sql="mysql@1997";
Class.forName("com.mysql.jdbc.Driver").newInstance();
connect=DriverManager.getConnection(url,uname_sql,pass_sql);
st=connect.createStatement();
rs=st.executeQuery("select * from  supp_name_costofbrakes");
int flag=100000;
//String s;
while(rs.next())
{
String r1 =rs.getString(1);
int r2=rs.getInt(2);
if(r2<flag)
{
	//s=r1;
flag=r2;
}
}
//out.println("  Dealer name --");
//out.println(s+"   ");
out.println("Minimum   price of brakes --");
out.println(flag+" ");



       
	
	
//if(flag==0)
	//response.sendRedirect("details_of_bus.jsp");


	
}
catch(Exception e)
{
}
//out.println("YOUR RESERVATION IS SUCCESSFULLY COMPLETED");
%>
</body>
</html>     