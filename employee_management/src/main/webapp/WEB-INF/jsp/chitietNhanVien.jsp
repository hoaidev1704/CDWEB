<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<h1>Danh Sách Nhân Viên:</h1>
		<div class="row">
			<div class="col-3">
				<b>MaNv:</b>
			</div>
			<div class="col-9">
				<span>${employee.id}</span>
			</div>
		</div>
		<div class="row">
			<div class="col-3">
				<b>Họ và tên:</b>
			</div>
			<div class="col-9">
				<span>${employee.name}</span>
			</div>
		</div>
		<div class="row">
			<div class="col-3">
				<b>Nữ:</b>
			</div>
			<div class="col-9">
				<c:if test="${employee.male}">				
					<input type="checkBox" disabled="disabled" checked>
				</c:if>
				<c:if test="${!employee.male}">				
					<input type="checkBox" disabled="disabled">
				</c:if>
			</div>
		</div>
		<div class="row">
			<div class="col-3">
				<b>Ngày Sinh:</b>
			</div>
			<div class="col-9">
				<span>${employee.getBirthDayForDisplay()}</span>
			</div>
		</div>
		<div class="row">
			<div class="col-3">
				<b>Địa chỉ:</b>
			</div>
			<div class="col-9">
				<span>${employee.address}</span>
			</div>
		</div>
		<div class="row">
			<div class="col-3">
				<b>Số điện thoại:</b>
			</div>
			<div class="col-9">
				<span>${employee.phone}</span>
			</div>
		</div>
		<div class="row">
			<div class="col-3">
				<b>Phòng ban:</b>
			</div>
			<div class="col-9">
				<span>${employee.department.name()}</span>
			</div>
		</div>
		<div class="row">
			<div class="col-3">
				<b>Chức vụ</b>
			</div>
			<div class="col-9">
				<span>${employee.title.name()}</span>
			</div>
		</div>
		<div class="row">
			<div class="col-3">
				<b>Lương căn bản</b>
			</div>
			<div class="col-9">
				<span>${employee.wageRate}</span>
			</div>
		</div>
		
		<a href="/dsnhanvien" class="btn btn-secondary">Danh sách nhân viên</a>
		<a href="/suanhanvien?id=${employee.id}" class="btn btn-secondary">Sửa</a>
	</div>

</body>
</html>