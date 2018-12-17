<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
This is a home page.
<div id = "wrapper">
    <div id = "header">
        <h2>Students manager</h2>
    </div>

    <div id = "container">
        <div id = "content">
            <input type="button" value="Add Customer" onclick="window.location.href='studentForm'"/>
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="tempCustomer" items="${students}">

                    <c:url var="updateLink" value="/formForUpdate">
                        <c:param name="studentId" value="${tempCustomer.id}"/>
                    </c:url>

                    <c:url var="deleteLink" value="/formForDelete">
                        <c:param name="studentId" value="${tempCustomer.id}"/>
                    </c:url>

                    <tr>
                        <td>${tempCustomer.firstName}</td>
                        <td>${tempCustomer.lastName}</td>
                        <td>${tempCustomer.email}</td>
                        <td>
                            <a href="${updateLink}">Update</a>
                        </td>
                        <td>
                            <a href="${deleteLink}"
                            onclick="if(!(confirm('Are you sure you want to delete this Student?'))) return false">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>