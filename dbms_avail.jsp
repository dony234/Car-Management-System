<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
	String url="jdbc:mysql://localhost:3303/automobile";
String uname_sql="root";
String pass_sql="shashank1999";
Class.forName("com.mysql.jdbc.Driver").newInstance();
connect=DriverManager.getConnection(url,uname_sql,pass_sql);
st=connect.createStatement();
rs=st.executeQuery("select * from  cars_in_showroom");
int flag=0;
while(rs.next())
{

int r1=rs.getInt(1);
String r2=rs.getString(2);
int r3=rs.getInt(3);
String r4=rs.getString(4);
String r5=rs.getString(5);
String r6=rs.getString(6);
int r7=rs.getInt(7);
       out.println("  DealerID --");
	   out.println(r1+"   ");
	   out.println(",  dealer name --");
	   out.println(r2);
	   out.println(",  vin --");
	   out.println(r3);
	   out.println(",  brand --");
	   out.println(r4);
	   out.println(",  Model --");
	   out.println(r5);
	   out.println(",  data type--");
	   out.println(r6+"   ");
	   out.println(",  price--");
	   out.println(r7+"   ");
	   out.println("<br/>");
}
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