<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title> My first JSP   </title>
	</head>	
	<body>		
		<!-- <form action="/cps/survey" method="post">			
			 Please enter a color <br>
			<input type="text" name="color"size="20px">
			<input type="submit" value="submit">						
		</form>	 -->	
		
		<form action="/cps/survey">  
			Subject:<input type="text" name="subject"><br/>  
			Text:<textarea rows="10" cols="70" name="msg"></textarea><br/>  
			<input type="submit" value="send"/>  
		</form>  
		
	</body>	
</html>