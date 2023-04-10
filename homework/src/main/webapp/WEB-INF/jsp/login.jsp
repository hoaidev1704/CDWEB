<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Spring Security Example</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h2 class="form-signin-heading">Đăng Nhập</h2>

        <c:if test="${errorMessage != null}"><span class="alert alert-danger"
            >${errorMessage}
        </span>
    </c:if>
    <form class="form-signin" method="POST" action="/login">
        <p>
            <label for="username" class="sr-only">Tên đăng nhập</label>
            <input type="text" id="username" name="name" class="form-control"
                   placeholder="Username" required autofocus>
        </p>
        <p>
            <label for="password" class="sr-only">Mật khẩu</label>
            <input type="password" id="password" name="password" class="form-control"
                   placeholder="Password" required>
        </p>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng Nhập
        </button>
    </form>
</div>
</body>
</html>