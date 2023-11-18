<%--
  Created by IntelliJ IDEA.
  User: Nika
  Date: 11/18/2023
  Time: 6:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Record</title>
</head>
<body>
<form action="./saveRecord.jsp" method="post">
    <label for="title">Title:</label><br>
    <input type="text" name="title" id="title"><br>

    <label for="director">Director:</label><br>
    <input type="text" name="director" id="director"><br>

    <label for="releaseDate">Release Date:</label><br>
    <input type="date" name="releaseDate" id="releaseDate"><br>

    <label for="rating">Rating:</label><br>
    <input type="number" step="0.01" name="rating" id="rating"><br>

    <label for="description">Description:</label><br>
    <input type="text" name="description" id="description"><br>

    <input type="submit" value="Submit">

</form>
</body>
</html>