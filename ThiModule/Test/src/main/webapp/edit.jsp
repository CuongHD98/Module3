<%--
  Created by IntelliJ IDEA.
  User: HDC
  Date: 7/5/2023
  Time: 10:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>EDIT</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Form EDIT</h2>
    <form method="post">
        <input name="id"  value="${viewStudent.id}" hidden="hidden"> <br>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="${viewStudent.name}">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" class="form-control" id="email" name="email" value="${viewStudent.email}">
        </div>
        <div class="form-group">
            <label for="dateOfBirth">DateOfBirthday:</label>
            <input type="text" class="form-control" id="dateOfBirth" name="dateOfBirth" value="${viewStudent.dateOfBirthday}">
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" id="address" name="address" value="${viewStudent.address}">
        </div>
        <div class="form-group">
            <label for="phoneNumber">Phone:</label>
            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${viewStudent.phoneNumber}">
        </div>
        <div class="form-group">
            <label for="">ClassRoom:</label>
            <select name="classRoom" id="">
                <c:forEach var="classRoom" items="${classRoomList}">
                    <option value="${classRoom.classRoom}">${classRoom.classRoom}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>


