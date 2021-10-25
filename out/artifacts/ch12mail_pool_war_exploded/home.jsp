<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/main.css" type="text/css"/>
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
    <h1 style="color: black; text-align: center">CD list</h1>
    <table class="table table-hover">
      <tr>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
      </tr>
      <tr>
        <td>86 (the band) - True Life Songs and Pictures</td>
        <td class="right">$14.95</td>
        <td><form action="cart" method="post">
          <input type="hidden" name="productCode" value="8601">
          <input type="submit" value="Add To Cart">
        </form></td>
      </tr>
      <tr>
        <td>Paddlefoot - The first CD</td>
        <td class="right">$12.95</td>
        <td><form action="cart" method="post">
          <input type="hidden" name="productCode" value="pf01">
          <input type="submit" value="Add To Cart">
        </form></td>
      </tr>
      <tr>
        <td>Paddlefoot - The second CD</td>
        <td class="right">$14.95</td>
        <td><form action="cart" method="post">
          <input type="hidden" name="productCode" value="pf02">
          <input type="submit" value="Add To Cart">
        </form></td>
      </tr>
      <tr>
        <td>Joe Rut - Genuine Wood Grained Finish</td>
        <td class="right">$14.95</td>
        <td><form action="cart" method="post">
          <input type="hidden" name="productCode" value="jr01">
          <input type="submit" value="Add To Cart">
        </form></td>
      </tr>
    </table>
  </div>
  <div>
    <jsp:include page="template/footer.jsp"></jsp:include>
  </div>

</div>
</body>
</html>
