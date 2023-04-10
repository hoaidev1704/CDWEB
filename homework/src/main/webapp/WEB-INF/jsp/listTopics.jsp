<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Spring Security Example</title> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <c:if test="${name != null}">
        <span style="float: right">Chào <b>${name} |</b><a href="/logout">Thoát</a></span>
    </c:if>
    <c:if test="${name == null}">
         <span style="float: right"><a href="/login">Đăng
        nhập</a></span>
    </c:if>


    <h4>Diễn đàn: Chuyện học phí và các chính sách hỗ trợ học tập</h4>
    <c:if test="${name != null}">
        <div>
            <a href="/newTopic" class="btn btn-primary">Gửi bài mới</a>
        </div>
    </c:if>


    <br>

    <table class="table">
        <thead class="thead-light">
        <tr>
            <th scope="col">Chủ đề</th>
            <th scope="col">Hồi âm</th>
        </tr>
        </thead>
        <tbody>

            <c:forEach var="topic" items="${topics}">
            <tr>

            <td><a href="/showTopic?id=${topic.id}">${topic.title}</a>
                <c:if test="${topic.latestReplied != null}">
                <p> Bài mới nhất gửi by
                ${topic.latestReplied.creator.username}
                 ${topic.latestReplied.createdTimeForDisplay()}
                </p>
                </c:if>
            </td>
            <td>${topic.replied()}</td>
            </tr>
            </c:forEach>

        </tbody>
    </table>

</div>

</body>
</html>