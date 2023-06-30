<%--
  Created by IntelliJ IDEA.
  User: HDC
  Date: 6/26/2023
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/ID10068">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Quantity: </td>
        <td>${requestScope["product"].getQuantity()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
</table>
</body>
</html>