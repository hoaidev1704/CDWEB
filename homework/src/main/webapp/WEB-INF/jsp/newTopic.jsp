<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
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
    <c:if test="${errorMessage != null}">
        <span>${errorMessage}</span>
    </c:if>

    <form class="form-signin" method="POST" action="/newTopic">
        <p>
            <label for="title" class="sr-only">Title</label>
            <input type="text" id="title" name="title" class="form-control"
                   placeholder="title" required autofocus>
        </p>
        <p>
            <label for="content" class="sr-only">Content</label>
            <textarea id="content" name="content" class="form-control"
                      placeholder="content" required></textarea>
        </p>
        <button class="btn btn-primary btn-block" type="submit">Gửi
        </button>
        <a class="btn btn-primary" href="/listTopics">Huỷ</a>
    </form>
</div>
</body>
</html>