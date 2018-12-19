<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: radek
  Date: 17.12.2018
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div>
    <h3>Save Student</h3>
    <form:form action="saveStudent" modelAttribute="student" method="POST">
        <%--This line keeps track on which Student are we working on. With it we can recognize if it's an existing Student and just updating or adding a new one--%>
        <form:hidden path="id"/>
        <table>
            <tbody>
                <tr>
                    <td><label>First name:</label></td>
                    <td><form:input path="firstName"/></td>
                </tr>
                <tr>
                    <td><label>Last name:</label></td>
                    <td><form:input path="lastName"/></td>
                </tr>

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
                    <td><input type="submit" value="Save"/></td>
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