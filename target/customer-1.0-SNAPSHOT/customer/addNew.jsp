<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/1/2020
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADD</title>
</head>
<style>
    .message{
        color:green;
    }
</style>
</head>
<body>
<h1>Create new customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<form method="post">
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Birth Day: </td>
                <td><input type="text" name="birthDay" id="birthDay"></td>
            </tr>
            <tr>
                <td>Image: </td>
                <td><input type="text" name="image" id="image"></td>
            </tr>
            <tr>
                <td></td>
                <td><a href="/customers">go back home</a> <input type="submit" value="Create customer"></td>
            </tr>
        </table>
    </fieldset>
</form>

</body>
</html>
