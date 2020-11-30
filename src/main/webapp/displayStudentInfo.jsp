<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students List</title>
</head>
<body>

<table border="1">
	<tr>
		<th>FirstName</th>
		<th>LastName</th>
		<th>Course</th>
		<th>Gender</th>
		<th colspan="2">Action</th>
	</tr>

<c:forEach var="Stu" items="${StudentList}">
		<tr>
		<td>${Stu.firstname}</td>
		<td>${Stu.lastname}</td>
		<td>${Stu.course}</td>
		<td>${Stu.gender}</td>
		<td><a href="http://localhost:8089/${Stu.studentId}">Edit</a></td>
		<td><a href="http://localhost:8089/delete/${Stu.studentId}">Delete</a></td>
		</tr>

</c:forEach>
</table>
<br>
<br>
<br>

<a href="http://localhost:8089/add">Add Student</a>
</body>
</html>