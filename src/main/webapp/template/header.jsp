<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/12/2021
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>

</head>
<body>
<div>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href="<c:url value = "/index.jsp"/>">Home</a>

    <!-- Links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="<c:url value = "/emailRegister.jsp"/>">Email</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value = "/SqlGatewayJdbc.jsp"/>">SqlGateWay</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value = "/list.jsp"/>">Download</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value = "/loadProducts"/>">Cart</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value = "/survey.jsp"/>">Survey</a>
      </li>
      <!-- Dropdown -->
      <%--        <li class="nav-item dropdown">--%>
      <%--          <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">--%>
      <%--            Exercise--%>
      <%--          </a>--%>
      <%--          <div class="dropdown-menu">--%>
      <%--            <a class="dropdown-item" href="#">Exercise 1</a>--%>
      <%--            <a class="dropdown-item" href="#">Exercise 2</a>--%>
      <%--            <a class="dropdown-item" href="#">Exercise 3</a>--%>
      <%--          </div>--%>
      <%--        </li>--%>
    </ul>
  </nav>
</div>
</body>
</html>
