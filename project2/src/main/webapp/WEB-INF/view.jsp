<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="mx-auto w-75 d-flex justify-content-between">
		<h3 class="mx-auto">
			Welcome,
			<c:out value="${user.userName}"></c:out>
			!
		</h3>
	</div>
	<div class="w-50 mx-auto">
		<div class="mt-4">
			<div class="d-flex justify-content-between">
				<a href="/posts/new" class="btn btn-primary">Doot Something</a>
				<a class="btn btn-primary" href="/logout">Logout</a>
			</div>
		</div>
		<br>
		<div class="mx-auto">

			<c:forEach items="${doot}" var="doot">
			<div class="d-flex flex-column border border-dark p-4 w-75 mx-auto mt-5">
				<c:out value="${doot.doot}"></c:out>
				<img alt="post" style="max-height: 75%;max-width:75%;" src="<c:out value="${doot.photos}"></c:out>">
			</div>
			<br>
			</c:forEach>

		</div>
	</div>
</body>
</html>