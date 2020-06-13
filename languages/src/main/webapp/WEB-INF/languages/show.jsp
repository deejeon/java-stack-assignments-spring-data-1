<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title><c:out value="${lang.name}"/></title>
	</head>
	<body>
		<a href="/languages">Dashboard</a>
		<h1><c:out value="${lang.name}"/></h1>
		<p>Creator: <c:out value="${lang.creator}"/></p>
		<p>Version: <c:out value="${lang.version}"/></p>
		<a href="/languages/${lang.id}/edit">Edit</a>
		<form action="/languages/${lang.id}" method="POST">
			<input type="hidden" name="_method" value="delete">
			<input type="submit" value="Delete">
		</form>
	</body>
</html>