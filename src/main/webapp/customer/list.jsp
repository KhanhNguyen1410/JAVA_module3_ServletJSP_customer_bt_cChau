<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/1/2020
  Time: 9:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Customer</title>
</head>
<body>
<style>
    img{
        width: 50px;
        height: 50px;
    }

</style>
<h1>Customers</h1>
<p>
<%--    <a href="/customers?action=create">Create new customer</a>--%>
    <a href="/customers?action=add">Add new customer</a>

</p>
<table border="1">
    <tr>
        <td>id</td>
        <td>Name</td>
        <td>birthDay</td>
        <td>image</td>
        <td>update</td>
        <td>delete</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
        <tr>
            <td>${customer.getId()}</td>
            <td>${customer.getName()}</td>
            <td>${customer.getBirthDay()}</td>
            <td><img src="${customer.getImage()}"></td>
            <td><a href="/customers?action=update&id=${customer.getId()}">update</a></td>
            <td><a href="/customers?action=delete&id=${customer.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
