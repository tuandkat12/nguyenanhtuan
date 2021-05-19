<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp"%>
<style>
.label-number {
    color: #4caf50;
    font-weight: bold;
    font-family: arial;
    margin: 0 0 0 10px;
}

.label-attribute {
    font-weight: bold;
    font-family: arial;
    margin: 2px 0 0 10px;
}
</style>
<div class="col-md-8" id="content">
	<div class="box-wrapper container-fluid">
		<div>
			<p class="text-show-time">THỐNG KÊ VÉ ĐÃ BÁN</p>
		</div>
		<c:set var="contextPath" value="${pageContext.request.contextPath}" />
		<form:form method="GET" modelAttribute="movies" align="center"
			action="${contextPath}/thongkeSLV">
			<select id="slmovie" name="movieID"
				onchange="location=options[selectedIndex].value;">
				<c:forEach var="movie" items="${listMovie}">
					<option hidden>-- Chọn một bộ phim --</option>
					<option value="thongkeSLV?movieID=${movie.movieID}">${movie.movieNameVN }</option>
				</c:forEach>
			</select>
		</form:form>
		<div style="margin-top: 20px">
			<table id="example" class="table table-striped">
				<thead>
					<tr>
						<th scope="col">Mã phim</th>
						<th scope="col">Tên phim</th>
						<th scope="col">Loại vé</th>
						<th scope="col">Số lượng vé</th>
						<th scope="col">Ngày</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="thongke" items="${listThongke}">
						<tr>
							<td>${thongke[0]}</td>
							<td>${thongke[1]}</td>
							<td>${thongke[2]}</td>
							<td>${thongke[3]}</td>
							<td>${thongke[4]}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<c:if test="${not empty listThongke}">
			<div id="doanhthu" style="margin-top: 5%;">
				<div class="form-group">
				<label for="my-input" class="label-attribute">Tổng tiền vé loại 1: </label>
				<label for="my-input" class="label-number">${tienveloai1 }đ</label>
			</div>
			<div class="form-group">
				<label for="my-input" class="label-attribute">Tổng tiền vé loại 2: </label>
				<label for="my-input" class="label-number">${tienveloai2 }đ</label>
			</div>
			<div class="form-group">
				<label for="my-input" class="label-attribute">Tổng tiền vé: </label>
				<label for="my-input" class="label-number">${tongtien }đ</label>
			</div>
			</div>
			</c:if>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		$('#example').DataTable();
//		$('#slmovie').change(function () { 
//	        $('#doanhthu').show();
//	    });
		
	});
</script>
<%@include file="include/footer.jsp"%>