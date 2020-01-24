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
    <div id = "header" align="center">
        <br/>
        <h1 class="text-default">Registered students list</h1>
    </div>
<div id = "wrapper" align="center">

    <br>
    <div id = "container">
        <div id = "content">
            <!--  search box -->
            <form:form action="search" method="POST" class="form-inline my-2 my-lg-0">
                <input type="text" name="searchName" class="form-control mr-sm-2" placeholder="Search" aria-label="Search"/>

                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form:form>

            <table class="table table-striped">
                <tr>
                    <th style="color: green">First Name</th>
                    <th style="color: green">Last Name</th>
                    <th style="color: green">Email</th>
                </tr>
                <c:forEach var="tempStudent" items="${students}">
                    <tr>
                        <td>${tempStudent.firstName}</td>
                        <td>${tempStudent.lastName}</td>
                        <td>${tempStudent.email}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<br>
<br>
    <a href="/login" class="btn btn-primary" role="button">Login</a>
<br>
    <input type="button" value="Back to home" onclick="window.location.href='home'"/>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>