<%--
  Created by IntelliJ IDEA.
  User: Nika
  Date: 11/18/2023
  Time: 6:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="dbConnection.jsp" %>
<html>
<head>
    <title>Execute Update</title>
</head>
<body>

<%
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String releaseDate = request.getParameter("releaseDate");
    String rating = request.getParameter("rating");
    String description = request.getParameter("description");
%>

<c:set var="id" value="<%=id%>"/>
<c:set var="title" value="<%=title%>"/>
<c:set var="director" value="<%=director%>"/>
<c:set var="releaseDate" value="<%=releaseDate%>"/>
<c:set var="rating" value="<%=rating%>"/>
<c:set var="description" value="<%=description%>"/>

<sql:update var="count" dataSource="${db}">
    update movies set title = ?, director = ?, release_date = ?, rating = ?, description = ? where id = ?;
    <sql:param value="${title}"/>
    <sql:param value="${director}"/>
    <sql:param value="${releaseDate}"/>
    <sql:param value="${rating}"/>
    <sql:param value="${description}"/>
    <sql:param value="${id}"/>
</sql:update>

<a href="./index.jsp">Home</a>

</body>
</html>