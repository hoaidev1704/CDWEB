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
<script src="${contextPath}/webjars/js/jquery-3.6.2.js"
	></script>
</head>
<body>
	<script>
	    const removeIds = [];
		function handleChange(checkbox, id) {
		    if(checkbox.checked == true){
		    	removeIds.push(id);
		    }else{
		    	const index = removeIds.indexOf(id);
		    	if (index > -1) {
		    		removeIds.splice(index, 1);
		    	}		   
		    }
		   if(removeIds.length > 0) {
			   document.getElementById("removeButton").removeAttribute("disabled");
		   }else {
			   document.getElementById("removeButton").setAttribute("disabled", "disabled");
		   }
		
		}
		
		function onRemove() {
		    $.ajax({
                type: "POST",
                url : "xoanhanvien",
                data: {ids: removeIds}
        	});
		}
		
	</script>
	<div class="container">
		<h1>Danh Sách Nhân Viên:</h1>
		<p>Tổng số nhân viên:</p>
		<a href="/themnhanvien" class="btn btn-primary">Thêm nhân viên</a>
		<button class="btn btn-secondary" id="removeButton" disabled="true" onClick='onRemove()')>xóa</button>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">Sửa</th>
					<th scope="col">Chọn</th>
					<th scope="col">Mã NV</th>
					<th scope="col">Họ tên</th>
					<th scope="col">Ngày Sinh</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="employee" items="${employees}">
					<tr>
						<th scope="row"><a href="/suanhanvien?id=${employee.id}" class="btn btn-primary">Sửa</a></th>
						<td><input type="checkbox"
							onchange='handleChange(this, ${employee.id});'
							aria-label="Checkbox for following text input"></td>
						<td><a href="/chitietNhanVien?id=${employee.id}">${employee.id}</a></td>
						<td>${employee.name}</td>
						<td>${employee.getBirthDayForDisplay()}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>