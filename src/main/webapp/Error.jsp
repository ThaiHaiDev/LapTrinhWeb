<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Error</title>
</head>
<body>
    <jsp:include page="/templates/headers/header.jsp"></jsp:include>
    <h1>Error</h1>
    <h2><%=exception.getMessage() %><br/> </h2>
    <button type="button" onclick="quay_lai_trang_truoc()">Return</button>
    <script>
        function quay_lai_trang_truoc(){
            history.back();
        }
    </script>
    <jsp:include page="/templates/footers/footer.jsp"></jsp:include>
    <jsp:include page="/templates/footers/footer.jsp"></jsp:include>
</body>
</html>
