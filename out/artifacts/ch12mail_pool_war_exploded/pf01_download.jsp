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
</head>
<body>
<div>
    <jsp:include page="template/header.jsp"></jsp:include>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <form style="background: rgba(77,107,128,0.57);border-style: outset;" onsubmit="preventDefault()" class="box">
<h1 style="color: black">Downloads</h1>

<h2 style="color: white">Paddlefoot - The First CD</h2>

                    <table>
                        <tr>
                            <th>Song title</th>
                            <th>Player</th>
                            <th>Audio Format</th>
                        </tr>
                        <tr>
                            <td>You Are a Star</td>
                            <td>
                                <audio controls autoplay name="media" controlsList="nodownload">  <%--controlsList="nodownload" không cho tải trong trình phát--%>
                                    <source src="<c:url value='/musicStore/start3.mp3'/>" type="audio/mp3">
                                </audio>
                            </td>
                            <td>  <%--<c:url value='/musicStore/sound/8601/start3.mp3'/>--%>
                                <a href="<c:url value='/musicStore/start3.mp3'/>" target="_blank"
                                   download="DuskTillDawn-ZaynSia">MP3</a>
                                <%--/musicStore/sound/${productCode}/star.mp3 --%>
                            </td>
                        </tr>
                        <tr>
                            <td>Don't Make No Difference</td>
                            <td> <%--Nguồn: https://mp3-malina.me/tracks/86%20the%20Band--%>
                                <audio controls autostart="0" name="media" controlsList="nodownload">  <%--controlsList="nodownload" không cho tải trong trình phát--%>
                                    <source src="<c:url value='/musicStore/start3.mp3'/>" type="audio/mp3">
                                </audio> <%--đối vói chrom autostart="0" thì file sẽ không tự động chạy--%>
                            </td>
                            <td>
                                <a href="<c:url value='/musicStore/start3.mp3'/>" target="_blank"
                                   download="Don't Make No Difference">MP3</a>
                            </td>
                        </tr>
                    </table>

<p><a href="?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>