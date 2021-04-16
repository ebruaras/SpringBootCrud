<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Student List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Student List</h2>
    <table class="table table-striped">
        <thead>
        <th scope="row">ID</th>
        <th scope="row">Name</th>
        <th scope="row">Surname</th>
        <th scope="row">Student Number</th>
        <th scope="row">Department</th>
        <th scope="row">Mail</th>
        <th scope="row">Update</th>
        <th scope="row">Delete</th>
        </thead>
        <tbody>
        <c:forEach items="${studentList }" var="student" >
            <tr>
                <td>${student.id }</td>
                <td>${student.name }</td>
                <td>${student.surname }</td>
                <td>${student.studentNumber }</td>
                <td>${student.department }</td>
                <td>${student.mail }</td>
                <td>
                    <spring:url value="/student/updateStudent/${student.id }" var="updateURL" />
                    <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
                </td>
                <td>
                    <spring:url value="/student/deleteStudent/${student.id }" var="deleteURL" />
                    <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/student/addStudent/" var="addURL" />
    <a class="btn btn-primary" href="${addURL }" role="button" >Add New Student</a>
</div>
</body>
</html>