
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
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                </tr>

                <c:forEach var = "tempStudent" items = "${students}">
                    <tr>
                        <td>{$tempStudent.firstName}</td>
                        <td>{$tempStudent.lastName}</td>
                        <td>{$tempStudent.email}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

</div>
</body>
</html>