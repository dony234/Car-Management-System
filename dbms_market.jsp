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
<h1 align="center">BOOK Your_car.com</h1>

<form action="dbms_booking.jsp" method=post>
Submit : <input type="submit" name="Submit">
</form>
<%
String name=request.getParameter("sy");
String uname=request.getParameter("opt");
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
rs=st.executeQuery("select * from cars_in_showroomm");
int flag=0;
out.print("CUSTOMER NAME  --> "+name);
int fla=0;
out.println("<br/>");
while (rs.next()) 
{
	
	int dealer_id = rs.getInt(1);
	String dealer_name= rs.getString(2);
	int vin=rs.getInt(3);
	String brand=rs.getString(4);
	String model=rs.getString(5);
	String body_type=rs.getString(6);
	int price=rs.getInt(7);
	//out.print(uname);
	if(uname.equals(brand))
	{
		fla++;
			out.println(dealer_id+"  ");
			out.println(dealer_name+"  ");
		    out.println(vin+"  ");
			out.println(brand+"  ");
			out.println(model+"  ");
			out.println(body_type+"  ");
		    out.println(price+"  ");
			out.println();
			
	}
	out.println("\n");
	 out.println("<br/>");
		
}
if(fla==0)
	out.println("NO CARS OF THIS TYPE OF BRAND IN ANY SHOWROOM");
	//response.sendRedirect("details_of_bus.jsp");


	
}
catch(Exception e)
{
}
//out.println("YOUR RESERVATION IS SUCCESSFULLY COMPLETED");
%>
</body>
</html>     