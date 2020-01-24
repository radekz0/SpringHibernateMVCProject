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
    <div id = "header">
        <br/>
        <h3 class="text-default">Please enter your details:</h3>
    </div>
<div>
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
                    <td><button type="submit" class="btn btn-primary">Save</button></td>
                </tr>
            </tbody>
        </table>
    </form:form>
    <p>
        <br>
        <input type="button" value="Back to home" onclick="window.location.href='home'"/>
    </p>
</div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>