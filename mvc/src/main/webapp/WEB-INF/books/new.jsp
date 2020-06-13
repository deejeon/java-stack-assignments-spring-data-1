<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>New Book</title>
	</head>
	<body>
		<h1>New Book</h1>
		<form:form action="/books" method="POST" modelAttribute="book">
			<div>
				<form:label path="title">Title</form:label>
				<form:errors path="title"/>
				<form:input path="title"/>
			</div>
			<div>
				<form:label path="description">Description</form:label>
				<form:errors path="description"/>
				<form:textarea path="description"/>
			</div>
			<div>
				<form:label path="language">Language</form:label>
				<form:errors path="language"/>
				<form:input path="language"/>
			</div>
			<div>
				<form:label path="numberOfPages">Pages</form:label>
				<form:errors path="numberOfPages"/>
				<form:input type="number" path="numberOfPages"/>
			</div>
			<input type="submit" value="Submit"/>
		</form:form>
	</body>
</html>