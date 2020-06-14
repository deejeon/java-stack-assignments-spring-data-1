<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Top Ten Songs</title>
	</head>
	<body>
		<a href="/dashboard">Dashboard</a>
		<h1>Top Ten Songs</h1>
		<ul>
			<c:forEach items="${songs}" var="song">
			<li><c:out value="${song.rating}"/> - <a href="/songs/${song.id}"><c:out value="${song.title}"/></a> - <c:out value="${song.artist}"/>
			</c:forEach>
		</ul>
	</body>
</html>