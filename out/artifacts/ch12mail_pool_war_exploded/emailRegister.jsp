<%@ taglib prefix="mma" uri="/WEB-INF/murach.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <%--    <link rel="stylesheet" href="styles/main.css" type="text/css"/>--%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="styles/email.css" type="text/css"/>

</head>
<body style="background: whitesmoke">
<div>
    <jsp:include page="template/header.jsp"></jsp:include>
</div>

<div class="container">
    <div class="row mt-5">
        <div class="col-lg-10" style="margin: auto !important;border-style: outset; background: white;">
            <div class="fo">
                <h1 style="font-size: 35px;color: teal; margin-left: 8px"><b>Join our email list</b></h1>
                <p style="margin-left: -14px"><b>To join our email list, enter your name and
                    email address below.</b></p>
                <p style="margin-left: -14px"><mma:ifEmptyMark color="blue" field=""/> marks required fields</p>
                <p style="margin-left: -14px"><i><%=request.getAttribute("msg") != null ?request.getAttribute("msg"): ""%></i></p>
                <form action="emailList" method="post">
                    <input type="hidden" name="action" value="add"><br>
                    <label class="pad_top" style="font-size: 20px">Email: </label>
                    <input type="email" name="email" value="${user.email}"
                           required><br>

                    <label class="pad_top" style="font-size: 20px">First Name:</label>
                    <input type="text" name="firstName" value="${user.firstName}"
                           required><br>

                    <label class="pad_top" style="font-size: 20px">Last Name:</label>
                    <input type="text" name="lastName" value="${user.lastName}"
                           required><br>

                    <label>&nbsp;</label>
                    <input type="submit" value="Join Now" class="btn" style="margin-left: -250px">
                </form>
                <br>
                <p style="margin-left: -15px">The current date is <mma:currentDate />.</p>

                <mma:ifWeekday>
                    <p style="margin-left: -15px">Live support available at 1-800-555-2222</p>
                </mma:ifWeekday>
            </div>
        </div>
    </div>
</div>

<div>
    <jsp:include page="template/footer.jsp"></jsp:include>
</div>
</body>
</html>