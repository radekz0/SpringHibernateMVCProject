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
<h2 class="text-default">Welcome to the class registration</h2>
</div>
<div align="center">
  <a href="/login" class="btn btn-primary" role="button">Login</a>
  &nbsp;&nbsp;
  <a href="/studentForm" class="btn btn-primary" role="button">Register</a>
</div>
<div align="center">
<br>
<br>
<br>
<br>
We have <b>${studentCount}</b> student(s) registered.
<br>
<input type="button" value="Registered students list" onclick="window.location.href='list'"/>
</div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>