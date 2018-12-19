<%--
  Created by IntelliJ IDEA.
  User: radek
  Date: 19.12.2018
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<div align="center">
    <h2>Welcome ${validStudent.firstName}!</h2>
</div>
<div>
    <h3><p style="color:blue">Your details:</p></h3>
    <b>First name:</b> ${validStudent.firstName}
    <br>
    <b>Last name:</b> ${validStudent.lastName}
    <br>
    <b>Email:</b> ${validStudent.email}
    <br>
    <b>Password:</b> ${validStudent.password}
    <br>
</div>
</body>
</html>
