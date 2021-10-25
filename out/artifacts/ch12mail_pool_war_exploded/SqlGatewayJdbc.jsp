<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/sqlgateway.css" type="text/css"/>
    <script src="js/SqlGate.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body style="background: whitesmoke">
<div>
    <jsp:include page="template/header.jsp"></jsp:include>
</div>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sqlStatement == null}">
    <c:set var="sqlStatement" value="select * from user" />
</c:if>

<div class="container">
    <div class="row mt-5">
        <div class="col-lg-10 " style="margin: auto !important;border-style: outset; background: white;">
            <div class="fo">

                <h1 style="color: green">The SQL Gateway</h1>
                <p>Enter an SQL statement and click the Execute button.</p>

                <p><b>SQL statement:</b></p>
                <form  action="sqlGateway" method="post">
                    <textarea name="sqlStatement" cols="70" rows="8" style="padding-left: 20px">${sqlStatement}</textarea>
                    <br>
                    <input type="submit" class="btn" value="Execute" style="padding:.6rem 4rem;">
                </form>

                <p><b>SQL result:</b></p>
                <div style="padding-left: 3%">
                    ${sqlResult}
                </div>
            </div>
        </div>
    </div>
</div>

<div>
    <jsp:include page="template/footer.jsp"></jsp:include>
</div>
</body>
</html>