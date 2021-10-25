<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lỗi Java</title>
</head>
<body>
    <jsp:include page="/templates/headers/header.jsp"></jsp:include>
    <h1>Đây là lỗi Java nha!</h1>
    <h2>Không sao đâu, chúng mình sẽ fix sau, nhấn return để quay lại bạn nhé</h2>
    <button type="button" onclick="quay_lai_trang_truoc()">Return</button>
    <script>
        function quay_lai_trang_truoc(){
            history.back();
        }
    </script>
    <jsp:include page="/templates/footers/footer.jsp"></jsp:include>
</body>
</html>
