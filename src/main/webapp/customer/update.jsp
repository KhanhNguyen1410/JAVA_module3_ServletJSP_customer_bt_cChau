<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/1/2020
  Time: 11:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<h1>Edit customer</h1>
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
                <td>id: </td>
                <td><input type="text" name="id" id="id" value="${requestScope["customer"].getId()}"></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
            </tr>
            <tr>
                <td>Birth Day: </td>
                <td><input type="text" name="birthDay" id="birthDay" value="${requestScope["customer"].getBirthDay()}"></td>
            </tr>
            <tr>
                <td>Image: </td>
                <td><input type="text" name="image"  value="${requestScope["customer"].getImage()}"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Update customer">
                    <br>
                    <a href="/customers">Back to customer list</a>
                </td>
            </tr>
        </table>
    </fieldset>
</form>

</body>
</html>
