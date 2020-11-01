<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/1/2020
  Time: 11:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DELTE</title>
</head>
<body>
<h1>Delete customer</h1>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>id: </td>
                <td>${requestScope["customer"].getId()}</td>
            </tr>
            <tr>
                <td>Name: </td>
                <td>${requestScope["customer"].getName()}</td>
            </tr>
            <tr>
                <td>birthDay: </td>
                <td>${requestScope["customer"].getBirthDay()}</td>
            </tr>
            <tr>
                <td>image: </td>
                <td>${requestScope["customer"].getImage()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete customer"></td>
                <td><a href="/customers">Back to customer list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
