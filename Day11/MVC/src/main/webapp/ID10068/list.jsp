<%--
  Created by IntelliJ IDEA.
  User: HDC
  Date: 6/26/2023
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>list</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>Product</h1>
    <p>
        <a href="/ID10068/create">Create new product</a>
    </p>
</div>
<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items='${requestScope["products"]}' var="product">
            <tr>
                <td>${product.getId()}</td>
                <td><a href="/ID10068/view?id=${product.getId()}">${product.getName()}</a></td>
                <td>${product.getQuantity()}</td>
                <td>${product.getPrice()}</td>
                <td><a href="/ID10068/edit?id=${product.getId()}">edit</a></td>
                <td><a href="/ID10068/delete?id=${product.getId()}">delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
