<%--
  Created by IntelliJ IDEA.
  User: HDC
  Date: 7/5/2023
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>List Student</h2>
    <a href="/student?action=create"  class="btn btn-success">Create Nhân Viên</a>
    <form method="post" action="/student?action=select">
        FindStudentByName : <input type="text" name="nameLike" id="nameLike" size="45"/>
        <input type="submit" value="Find"/>

    </form>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>DateOfBirth</th>
            <th>Address</th>
            <th>PhoneNumber</th>
            <th>ClassRoom</th>
            <th class="disabled-sorting text-right">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="viewStudent" items="${viewStudentList}">
            <tr>
                <td><c:out value="${viewStudent.id}"/></td>
                <td><c:out value="${viewStudent.name}"/></td>
                <td><c:out value="${viewStudent.email}"/></td>
                <td><c:out value="${viewStudent.dateOfBirthday}"/></td>
                <td><c:out value="${viewStudent.address}"/></td>
                <td><c:out value="${viewStudent.phoneNumber}"/></td>
                <td><c:out value="${viewStudent.classRoom}"/></td>
                <td class="disabled-sorting text-right">
                    <a href="/student?action=edit&id=${viewStudent.id}" class="btn btn-info" role="button">Edit</a>
                    <a href="/student?action=delete&id=${viewStudent.id}" class="btn btn-info" role="button">Delete</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

</body>
</html>
