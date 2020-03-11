<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form</title>
</head>
<body>
<form:form action="submit" modelAttribute="reservation">
First Name :<form:input path="firstName"/><br>
Last Name :<form:input path="lastName"/><br>
Gender :  Male <form:radiobutton path="gender" value="Male"/>
Female <form:radiobutton path="gender" value="Female"/><br>
Meals : BreakFast<form:checkbox path="food" value="BreakFast"/>
Lunch<form:checkbox path="food" value="Lunch"/>
<br>
Leaving From : <form:select path="cityFrom">
<form:option value="kolkata" lable="kolkata"/>
<form:option value="delhi" label="delhi"/>
</form:select>
<br>
Going To : <form:select path="cityTo">
<form:option value="delhi" label="delhi"/>
<form:option value="kolkata" lable="kolkata"/>
</form:select>
<br>
<input type="submit" value="Submit"/>
</form:form>
</body>
</html>