<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
This is a home page.
<div id = "wrapper">

    <div id = "container">
        <div id = "content">
            <input type="button" value="Add Student" onclick="window.location.href='studentForm'"/>
            <br>
            <!--  search box -->
            <form:form action="search" method="POST">
                Search: <input type="text" name="searchName" />

                <input type="submit" value="Search" />
            </form:form>

            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="tempStudent" items="${students}">

                    <c:url var="updateLink" value="/formForUpdate">
                        <c:param name="studentId" value="${tempStudent.id}"/>
                    </c:url>

                    <c:url var="deleteLink" value="/formForDelete">
                        <c:param name="studentId" value="${tempStudent.id}"/>
                    </c:url>

                    <tr>
                        <td>${tempStudent.firstName}</td>
                        <td>${tempStudent.lastName}</td>
                        <td>${tempStudent.email}</td>
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