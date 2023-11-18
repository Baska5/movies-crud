<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="dbConnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie List</title>
</head>
<body>
<a href="./addRecord.jsp">Add Movie</a>

<sql:query var="movies" dataSource="${db}">
    select * from movies
</sql:query>

<table>
    <thead>
    <tr>
        <td>ID</td>
        <td>Title</td>
        <td>Director</td>
        <td>Release Date</td>
        <td>Rating</td>
        <td>Description</td>
        <td>Action</td>
        <td>Action</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="movie" items="${movies.rows}">
        <tr>
            <td>${movie.id}</td>
            <td>${movie.title}</td>
            <td>${movie.director}</td>
            <td>${movie.release_date}</td>
            <td>${movie.rating}</td>
            <td>${movie.description}</td>
            <td><a href="./updateRecord.jsp?id=${movie.id}">Update</a></td>
            <td><a href="./deleteRecord.jsp?id=${movie.id}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>