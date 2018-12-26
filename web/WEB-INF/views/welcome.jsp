<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <link type="text/css" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <script type="application/javascript" src="webjars/bootstrap/4.1.3/js/bootstrap.js">
    </script>

    <title>Welcome</title>
</head>
<body>
<div align="center">
    <h2>Welcome ${validStudent.firstName}!</h2>
</div>
<div>
    <c:url var="updateLink" value="/formForUpdate">
        <c:param name="studentId" value="${validStudent.id}"/>
    </c:url>
    <c:url var="deleteLink" value="/formForDelete">
        <c:param name="studentId" value="${validStudent.id}"/>
    </c:url>

    <h3><p style="color:#3d6eff">Your details:</p></h3>
    <b>First name:</b> ${validStudent.firstName}
    <br>
    <b>Last name:</b> ${validStudent.lastName}
    <br>
    <b>Email:</b> ${validStudent.email}
    <br>
    <b>Password:</b> ${validStudent.password}
    <br>
    <a href="${updateLink}"><button class="badge-dark">Update</button></a>&nbsp; <a href="${deleteLink}"
       onclick="if(!(confirm('Are you sure you want to delete your account?'))) return false"><button>Delete</button></a>
    <br>
</div>

</body>
</html>
