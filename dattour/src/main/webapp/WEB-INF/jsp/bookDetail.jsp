<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Dat Tour</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
            crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h3>Đặt tour: ${tour.description}</h3>
    <form:form method="post" action="" modelAttribute="customerForm">
        <h4>Thông tin khách hàng:</h4>
        <div class="form-group row">
            <form:label path="name" class="col-sm-2 col-form-label">Họ
                tên: (*)</form:label>
            <div class="col-sm-10">
                <form:input type="text" class="form-control" path="name"
                            readonly="true"/>
                <form:input type="hidden" class="form-control" path="tourId"
                            value="${topic.id}"/>
            </div>
        </div>

        <div class="form-group row">
            <form:label path="address" class="col-sm-2 col-form-label">Địa chỉ:
            </form:label>
            <div class="col-sm-10">
                <form:input type="text" class="form-control" path="address"
                            readonly="true"/>
            </div>
        </div>

        <div class="form-group row">
            <form:label path="email" class="col-sm-2 col-form-label">Email (*):
            </form:label>
            <div class="col-sm-10">
                <form:input type="text" class="form-control" path="email"
                            readonly="true"
                            required="required"/>
            </div>
        </div>
        <div class="form-group row">
            <form:label path="phone" class="col-sm-2 col-form-label">Điện
                Thoại:
            </form:label>
            <div class="col-sm-10">
                <form:input type="text" class="form-control" readonly="true"
                            path="phone"/>
            </div>
        </div>
        <br>
        <h4>Thông tin chuyến đi:</h4>
        <div class="form-group row">
            <form:label path="startDate" class="col-sm-2 col-form-label">Ngày
                khởi hành: (*)</form:label>
            <div class="col-sm-10">
                <form:input type="date" class="form-control"
                            required="required" readonly="true"
                            path="startDate" value=""/>
            </div>
        </div>
        <div class="form-group row">
            <form:label path="numberAdults"
                        class="col-sm-2 col-form-label">Số
                người lớn:
                (*)</form:label>
            <div class="col-sm-10">
                <form:input type="number" class="form-control" readonly="true"
                            required="required"
                            path="numberAdults" value=""/>
            </div>
        </div>

        <div class="form-group row">
            <form:label path="numberChildren"
                        class="col-sm-2 col-form-label">Số
                trẻ em:
            </form:label>
            <div class="col-sm-10">
                <form:input type="number" class="form-control" readonly="true"
                            path="numberChildren" value=""/>
            </div>
        </div>
        <br>
        <div style="float: right">
            <a href="listTours">Danh sách tours</a>
        </div>

    </form:form>
</div>

</body>
</html>