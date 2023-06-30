<%--
  Created by IntelliJ IDEA.
  User: HDC
  Date: 6/22/2023
  Time: 5:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<style type="text/css">
    .calculator {
        height:180px; width:230px;
        margin:0;
        padding:10px;
        border:1px #CCC solid;
    }
    .calculator input {
        padding:5px; margin:5px
    }
</style>
<body>
<form method="post" action="/resultID10047">
    <div class="calculator">
        <h2>Product Discount Calculator</h2>
        <input type="text" name="productDescription" size="30"  placeholder="Product Description" />
        <input type="text" name="listPrice" size="30" placeholder="List Price" />
        <input type="text" name="discountPercent" size="30" placeholder="Discount Percent" />
        <input type="submit" value="Calculate Discount"/>
    </div>
</form>
</body>
</html>