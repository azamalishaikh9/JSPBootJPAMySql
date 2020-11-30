<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Students</title>
</head>
<body>

<form:form method="get" action="addStudent" modelAttribute="Student">
	Student Id<form:input path="studentId"/><br>
	First Name<form:input path="firstname"/><br>
	Last Name<form:input path="lastname"/><br>
	 Gender:   
        Male <form:radiobutton path="gender" value="Male"/>  
        Female <form:radiobutton path="gender" value="Female"/>
    <br>
    Course: <form:select path="course">  
        <form:option value="Java" label="Java"/>  
        <form:option value="Spring" label="Spring"/>  
        <form:option value="JPA" label="JPA"/>  
        <form:option value="Python" label="Python"/>  
        </form:select> 
       <br>
	<input type="submit" value="Submit"/>
</form:form>

</body>
</html>