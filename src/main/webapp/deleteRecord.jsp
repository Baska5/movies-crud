<%--
  Created by IntelliJ IDEA.
  User: Nika
  Date: 11/18/2023
  Time: 6:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="dbConnection.jsp" %>
<html>
<head>
    <title>Execute Delete</title>
</head>
<body>

<%
    String id = request.getParameter("id");
%>

<c:set var="id" value="<%=id%>"/>
<sql:update var="count" dataSource="${db}">
    delete from movies where id = ?;
    <sql:param value="${id}"/>

</sql:update>
<a href="./index.jsp">Home</a>

</body>
</html>