<%--
  Created by IntelliJ IDEA.
  User: Nika
  Date: 11/18/2023
  Time: 6:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="dbConnection.jsp" %>
<html>
<head>
    <title>Update Record</title>
</head>
<body>
<h1>Update Record</h1>
<% String id = request.getParameter("id"); %>
<c:set var="id" value="<%=id%>"/>
<sql:query var="movies" dataSource="${db}">
    select * from movies where id = ?;
    <sql:param value="${id}"/>
</sql:query>

<c:forEach var="movie" items="${movies.rows}" varStatus="loopStatus">
    <c:if test="${loopStatus.index == 0}">

        <form action="./executeUpdate.jsp?id=<%=id%>" method="post">
            <label for="title">Title:</label><br>
            <input type="text" name="title" id="title" value='${movie.title}'><br>

            <label for="director">Director:</label><br>
            <input type="text" name="director" id="director" value='${movie.director}'><br>

            <label for="releaseDate">Release Date:</label><br>
            <input type="date" name="releaseDate" id="releaseDate" value='${movie.release_date}'><br>

            <label for="rating">Rating:</label><br>
            <input type="number" step="0.01" name="rating" id="rating" value='${movie.rating}'><br>

            <label for="description">Description:</label><br>
            <input type="text" name="description" id="description" value='${movie.description}'><br>

            <input type="submit" value="Submit">
        </form>

    </c:if>
</c:forEach>
</body>
</html>
