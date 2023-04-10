<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Dat Tour</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
        crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h4>Các chương trình DU LỊCH</h4>
    <table class="table">
        <thead class="thead-light">
        <tr>
            <th scope="col">Chương trình</th>
            <th scope="col">Lịch Khởi hành</th>
            <th scope="col">Giá</th>
            <th scope="col">Đặt</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tour" items="${tours}">
            <tr>
                <td><a href="/tourDetail?id=${tour.id}">${tour.description}</a>
                    <p>
                    ${tour.days}
                    </p>
                </td>
                <td>${tour.departureSchedule}</td>
                <td>
                    <c:set var = "balance" value = "${tour.price}" />
                    <p>
                        <fmt:setLocale value = "en_US"/>
                        <fmt:formatNumber value = "${balance}" type = "currency"/>
                    </p>
                </td>
                <td><a class="btn btn-primary"
                       href="/bookTour?tourId=${tour.id}">Đặt
                    tour</a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>

</div>

</body>
</html>