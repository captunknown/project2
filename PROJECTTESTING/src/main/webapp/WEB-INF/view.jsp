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
<body class="bimg">
	<a href="/home"><img
		src="https://fontmeme.com/permalink/221021/191b454df59bc21ff8f1863f7f3ecd12.png"
		class="w-25 h-25" alt="halloween-fonts" border="0"></a>

	<div class="mx-auto w-75 d-flex justify-content-between"></div>
	<div class="w-50 mx-auto">
		<div class="mt-4">
			<div class="d-flex justify-content-between">
				<a href="/posts/new" class="btn btn-warning">Doot Something</a>
					<img src="https://fontmeme.com/permalink/221021/d4ffcb2405a0e7ad5245becf49a0882e.png"
						alt="halloween-fonts" border="0" style="width: 90%;">

				<a class="btn btn-warning" href="/logout">Logout</a>
			</div>
		</div>
		<br>
		<div class="mx-auto">

			<c:forEach items="${doot}" var="doot">
				<div
					class="d-flex flex-column border border-dark p-4 w-75 mx-auto mt-5"
					style="background-color: orange;">
					<c:out value="${doot.doot}"></c:out>
					<img alt="post" style="max-height: 75%; max-width: 75%;"
						src="<c:out value="${doot.photos}"></c:out>">
				</div>
				<br>
			</c:forEach>

		</div>
	</div>
</body>
</html>