<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Student Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <spring:url value="/student/saveStudent" var="saveURL" />
    <h2>Student</h2>
    <form:form modelAttribute="studentForm" method="post" action="${saveURL }" cssClass="form" >
    <form:hidden path="id"/>
        <div class="form-group">
            <label>Name</label>
            <form:input path="name" cssClass="form-control" id="name" />
        </div>
        <div class="form-group">
            <label>Surname</label>
            <form:input path="surname" cssClass="form-control" id="surname" />
        </div>
</div>
<div class="form-group">
    <label>Student Number</label>
    <form:input path="studentNumber" cssClass="form-control" id="studentNumber" />
</div>
</div>
<div class="form-group">
    <label>Department</label>
    <form:input path="department" cssClass="form-control" id="department" />
</div>
<div class="form-group">
    <label>Mail</label>
    <form:input path="mail" cssClass="form-control" id="mail" />
</div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form:form>

</div>
</body>
</html>