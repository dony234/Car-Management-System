<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<h1 align="center">BOOK MY_CAR.com</h1>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="left">Enter details of CAR for booking</h1>
<form action="dbms_sell.jsp">
<br/>
Customer Id : <input type="text" name="bid">
<br/>
Dealer_id: <input type="text" name ="source">
<br/>
VIN : <input type="text" name="destination">
<br/>
YEAR : <input type="text" name="fare">
<br/>
MONTH     : <input type="text" name="ts">
<br/>
DAY  : <input type="text" name="rs">
<br/>
SUBMIT : <input type="submit" name="Submit">

</form>
</body>
</html>