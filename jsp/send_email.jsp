<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>    
   

   
 
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="emailInfo" action="/cps/survey" method="post">
	<label for="to_email">To:</label>
		<select name ="to_email" class="to_email" id="to_email">
			<option value="newHires">New Hires</option>
			<option value="developers">Developers</option>
			<option value="testers">Testers</option>
		</select>
		<br />
	<label for="subject_email">Subject:</label>
		<br />
		<input name="subject_email" id="subject_email" value="" type="text" maxlength="50">
		<br />
	<label for="text_email">Message:</label>
		<br />
		<textarea class="text_email" cols="40" rows="20" name="text_email" id="text_email"></textarea>
		<br />
	<input class="btn" type="submit" data-role="none" value="Send">
</form>
</body>
</html>