<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Hello, world!</title>

    <style>
        body, html {
            height: 100%;
        }

        .bg {
            /* The image used */
            background-image: url("https://cdn.shopify.com/s/files/1/0947/6150/products/WMShay_Cochrane_Minimalist_Neutral_Desktop_Styled_Stock_Photography_05_2048x2048.jpg?v=1470155412");


            /* Full height */
            height: 100%;

            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>

<body>
<div class="bg">
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
    <input type="button" value="Back to home" onclick="window.location.href='home'"/>
</div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
