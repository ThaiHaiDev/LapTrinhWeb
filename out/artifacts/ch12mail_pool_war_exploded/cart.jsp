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
</head>
<body>
<div>
  <jsp:include page="template/header.jsp"></jsp:include>
  <div style='background: linear-gradient(to right, #ffffff, #a3a7b0); padding: 150px; padding-top: 50px;'>

    <h1 style="color: black;text-align: center">Your cart</h1>

    <table class="table table-hover">
      <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
      </tr>

      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <c:forEach var="item" items="${cart.items}">
        <tr>
          <td>
            <form action="" method="post">
              <input type="hidden" name="action" value="cart"/>
              <input type="hidden" name="productCode"
                     value="<c:out value='${item.product.code}'/>">
              <input type=text name="quantity"
                     value="<c:out value='${item.quantity}'/>" id="quantity">
              <input type="submit" value="Update" class="btn-success">
            </form>
          </td>
          <td><c:out value='${item.product.description}'/></td>
          <td>${item.product.priceCurrencyFormat}</td>
          <td>${item.totalCurrencyFormat}</td>
          <td>
            <form action="" method="post">
              <input type="hidden" name="action" value="cart"/>
              <input type="hidden" name="productCode"
                     value="<c:out value='${item.product.code}'/>">
              <input type="hidden" name="quantity"
                     value="0">
              <input type="submit" value="Remove Item" class="btn-danger">
            </form>
          </td>
        </tr>
      </c:forEach>
    </table>

    <p><b>To change the quantity</b>, enter the new quantity
      and click on the Update button.</p>

    <form action="" method="post">
      <input type="hidden" name="action" value="shop">
      <input type="submit" value="Continue Shopping">
    </form>
    <br>
    <form action="" method="post">
      <input type="hidden" name="action" value="checkout">
      <input type="submit" value="Checkout">
    </form>

  </div>

  <jsp:include page="template/footer.jsp"></jsp:include>
</div>
</body>
</html>