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
rs=st.executeQuery("select * from  v");
int flag1=0;
int flag2=0;
int flag3=0;
while(rs.next())
{

int r1=rs.getInt(1);

int r2=rs.getInt(2);
int r3=rs.getInt(3);
if(r3>flag3)
{
	flag1=r1;
	flag2=r2;
	flag3=r3;
}
}



       out.println("  Dealer ID --");
	   out.println(flag1+"   ");
	   out.println(",  VIN --");
	   out.println(flag2+"   ");
	   out.println(",  Waiting time --");
	   out.println(flag3);
	   

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