<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: radek
  Date: 18.12.2018
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title2</title>
</head>
<body>
<h3>Please enter your details:</h3>
<div>
    <form:form action="checkStudent" modelAttribute="cStudent" method="POST">
        <table>
            <tbody>
            <tr>
                <td><label>Email:</label></td>
                <td><form:input path="email"/></td>
            </tr>

            <tr>
                <td><label>Password:</label></td>
                <td><form:input path="password"/></td>
            </tr>

            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Login"/></td>
            </tr>

            </tbody>
        </table>
    </form:form>
    <p>
        <a href="/home">Back to home</a>
    </p>
</div>
</body>
</html>
