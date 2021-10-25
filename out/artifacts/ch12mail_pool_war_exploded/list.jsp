<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles/style.css" type="text/css"/>
</head>
<body>
<div>
    <jsp:include page="template/header.jsp"></jsp:include>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <form style="background: rgba(77,107,128,0.57);border-style: outset; background: white;" onsubmit="preventDefault()" class="box">
                    <h1 style="color: black">List of albums</h1>

                    <p>Welcome back, ${cookie.firstNameCookie.value}</p>

                    <p style="text-align: left">
                        <a href="download?action=checkUser&amp;productCode=8601">
                            86 (the band) - True Life Songs and Pictures
                        </a><br><br>

                        <a href="download?action=checkUser&amp;productCode=pf01">
                            Paddlefoot - The First CD
                        </a><br><br>

                        <a href="download?action=checkUser&amp;productCode=pf02">
                            Paddlefoot - The Second CD
                        </a><br><br>

                        <a href="download?action=checkUser&amp;productCode=jr01">
                            Joe Rut - Genuine Wood Grained Finish
                        </a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>