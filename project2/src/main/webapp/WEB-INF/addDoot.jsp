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
	<div class="border border-dark p-4 w-50 mx-auto mt-5">
		<form:form action="/posts/new" method="post" modelAttribute="newDoot">
			<form:input type="hidden" path="user" value="${userId}" />
			<h3>Doot Something</h3>
			<br>
			<form:errors path="doot" class="text-danger" />
			<form:textarea path="doot" class="form-control" />
			<br>
			<div class="input-group mb-3">
				<form:input path="photos" type="text" class="form-control" placeholder="Img Url"/>
			</div>
			<div class="d-flex justify-content-end">
				<a class="btn btn-secondary mx-4" href="/home">Cancel</a>
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form:form>
	</div>

</body>
</html>