<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <style>
        .text-muted {
            color: #6c757d!important;
        }
    </style>
    <%--<link rel="stylesheet" href="styles/main.css" type="text/css"/>--%>
</head>
<body>
<jsp:include page="template/header.jsp"></jsp:include>

<div style='background: linear-gradient(to right, #ffffff, #a3a7b0); padding: 150px; padding-top: 50px;'>
    <h1 style="color: black; text-align: center">CD list</h1>
    <table class="table table-hover">
        <tr>
            <th>Description</th>
            <th class="right">Price</th>
            <th>&nbsp;</th>
        </tr>

        <c:forEach items="${sessionScope.list}" var="procduct">
            <tr>
                <td>${procduct.description}</td>
                <td class="right">${procduct.price}</td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="productCode" value="${procduct.code}">
                        <input type="submit" value="Add To Cart">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<jsp:include page="template/footer.jsp"></jsp:include>
</body>
</html>