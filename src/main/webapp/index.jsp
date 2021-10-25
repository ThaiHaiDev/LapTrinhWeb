<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/13/2021
  Time: 12:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        .cloud{
            margin-bottom: -7%;
            position: absolute;
            bottom: 0; right: 0; left: 0;
            height: 18rem;
            background-size: 250rem 18rem;
            background:url('./images/cloud.png') repeat-x;
            animation: cloud 10s linear infinite;
        }

        @keyframes cloud{
            0%{
                background-position-x: 0rem;
            }
            100%{
                background-position-x: -250rem;
            }
        }

        .cloud-1{
            opacity: .5;
            height:20rem;
            background-size: 250rem 20rem;
            animation-direction: reverse;
            animation-duration: 15s;
        }
    </style>
</head>
<body>
<div>
    <jsp:include page="./template/header.jsp"></jsp:include>
</div>
<div>
    <h1 style="text-align: center; margin-top: 1%;background: deepskyblue"><b>Welcome To The Website Of The Group 5</b></h1>
</div>
<div class="image" style="background: deepskyblue">
    <img src="images/rocket.svg" alt="" style="width: 50%; margin-left: 25%">
</div>
<div class="cloud cloud-1"></div>
<div class="cloud cloud-2"></div>
<div>
    <jsp:include page="./template/footer.jsp"></jsp:include>
</div>
</body>
</html>
