<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quan Ly Nhan Vien</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->

<link href="${contextPath}/webjars/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container">
		<h1>Thêm Nhân Viên:</h1>
		<c:if test="${errorMessage != null}">
			<div class="alert alert-danger" role="alert">${errorMessage}</div>
		</c:if>
	
		<form:form action="/themnhanvien" method="post"
			modelAttribute="employee">
			<div class="form-group row">
				<form:label path="id" class="col-sm-2 col-form-label">*Mã Nv:</form:label>
				<div class="col-sm-6">
					<form:input type="text" class="form-control" required="true"
						path="id" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="name" class="col-sm-2 col-form-label">*Họ và tên:</form:label>
				<div class="col-sm-6">
					<form:input type="text" class="form-control" required="true"
						path="name" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="male" class="col-sm-2 col-form-label">Nữ:</form:label>
				<div class="col-sm-6">
					<form:checkbox path="male" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="birthDay" class="col-sm-2 col-form-label">*Ngày sinh:</form:label>
				<div class="col-sm-6">
					<form:input type="date" class="form-control" path="birthDay"
						required="true" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="address" class="col-sm-2 col-form-label">*Địa chỉ:</form:label>
				<div class="col-sm-6">
					<form:input type="text" class="form-control" path="address"
						required="true" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="phone" class="col-sm-2 col-form-label">Số ĐT:</form:label>
				<div class="col-sm-6">
					<form:input type="text" class="form-control" path="phone" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="department" class="col-sm-2 col-form-label">Phòng ban:</form:label>
				<div class="col-sm-6">
					<form:select type="text" class="form-control" path="department">
						<form:options items="${departments}"></form:options>
					</form:select>
				</div>
			</div>
			<div class="form-group row">
				<form:label path="title" class="col-sm-2 col-form-label">Chức vụ:</form:label>
				<div class="col-sm-6">
					<form:select type="text" class="form-control" path="title">
						<form:options items="${titles}"></form:options>
					</form:select>
				</div>
			</div>
			<div class="form-group row">
				<form:label path="wageRate" class="col-sm-2 col-form-label">Lương căn bản:</form:label>
				<div class="col-sm-6">
					<form:input type="number" class="form-control" path="wageRate" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-2"></div>
				<div class="col-sm-6">
					<div style="float: right">
						<button class="btn btn-primary" type="submit">Lưu</button>
						<a href="/dsnhanvien" class="btn btn-secondary">Hủy</a>
					</div>
				</div>

			</div>

		</form:form>
	</div>

</body>
</html>