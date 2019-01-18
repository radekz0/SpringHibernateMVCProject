<%--
  Created by IntelliJ IDEA.
  User: radek
  Date: 12.12.2018
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <div id = "header" align="center">
    <h2>Welcome to the student manager</h2>
  </div>
  <div align="center">
    <a href="/login">Login</a> &nbsp;&nbsp;<a href="/studentForm">Register</a>
  </div>
  <div align="center">
    <br>
    <br>
    <br>
    <br>
    We have <b>${studentCount}</b> student(s) registered.
    <br>
    <input type="button" value="Registered students list" onclick="window.location.href='home'"/>
  </div>
  </body>
</html>
