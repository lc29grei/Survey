<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="emailInfo" action="/cps/survey" method="post">
	<label for="to_email">To:</label>
		<select class="to_email" id="to_email">
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