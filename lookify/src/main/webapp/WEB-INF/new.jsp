<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Add Song</title>
	</head>
	<body>
		<a href="/dashboard">Dashboard</a>
		<h1>Add Song</h1>
		<form:form action="/songs" method="POST" modelAttribute="song">
			<div>
				<form:label path="title">Title: </form:label>
				<form:errors path="title"/>
				<form:input path="title"/>
			</div>
			<div>
				<form:label path="artist">Artist: </form:label>
				<form:errors path="artist"/>
				<form:input path="artist"/>
			</div>
			<div>
				<form:label path="rating">Rating: </form:label>
				<form:errors path="rating"/>
				<form:input type="number" path="rating"/>
			</div>
			<input type="submit" value="Submit"/>
		</form:form>
	</body>
</html>