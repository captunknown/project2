<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="loginimg">

	<h1 class="text-center"> </h1>
	
	<div class="d-flex justify-content-evenly">

		<div class="border border-dark p-4 w-25 " style="background-color: #EB6123;">

			<form:form action="/register" method="post" modelAttribute="newUser">

				<h3>Register</h3>
				<br>
				<form:label path="userName" class="form-label">Username:</form:label>
				<form:errors path="userName" class="text-danger" />
				<form:input path="userName" class="form-control" />
				<br>
				<form:label path="email" class="form-label">Email:</form:label>
				<form:errors path="email" class="text-danger" />
				<form:input path="email" class="form-control" />
				<br>
				<form:label path="password" class="form-label">Password:</form:label>
				<form:errors path="password" class="text-danger" />
				<form:input path="password" class="form-control" type="password" />
				<br>
				<form:label path="confirm" class="form-label">Confirm Password:</form:label>
				<form:errors path="confirm" class="text-danger" />
				<form:input path="confirm" class="form-control" type="password"/>
				<br>
				<input class="btn btn-dark" class="button" type="submit" value="Submit" />

			</form:form>
		</div>
	<hr>
	<div class="border border-dark p-4 w-25" style="background-color: #721F92;">
	
	<form:form action="/login" method="post" modelAttribute="newLogin">
	
				<h3>Login</h3>
				<br>
				<form:label path="email" class="form-label">Email:</form:label>
				<form:errors path="email" class="text-danger" />
				<form:input class="form-control" path="email" />
				<br>
				<form:label path="password" class="form-label">Password:</form:label>
				<form:errors path="password" class="text-danger" />
				<form:input type="password" class="form-control" path="password" />
				<br>
				<input class="btn btn-warning" class="button" type="submit" value="Submit" />
	</form:form>
	</div>
	</div>
</body>
</html>