<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="Form.css">
</head>
<body >

<form action="dbms_market.jsp" method=post>
<h1 align="center">Availability of cars in Showroom</h1>
		Customer name: <input type="text" name="sy" placeholder="eg: ABC" required>
		Mail id :<input type="text"name="ey" placeholder="eg:ABC@gmail.com" required>
		 
		
	<p>Select Brand</p>
	<select id="text"name="opt" required>
		<option>
		Brezza
		</option>
		<option>
		vitara
		</option>
		<option>
		Swift
		</option>
		<option>
		Ciaz
		</option>
		<option>
		Alto
		</option>
		<option>
		Wagon
		</option>
		<option>
		Baleno
		</option>
		
		</select>
			
			<br>
			<br>
			
			</select>
			<input type="submit" value="Check">
	</form>
	
</body>
</html>