<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp"%>
<div class="col-md-8" id="content">
	<!-- <body class="box-body"> -->
	<div class="box-wrapper container-fluid">
		<div>
			<p class="text-show-time">THÊM MỚI GIỜ CHIẾU</p>
		</div>
		<c:set var="contextPath" value="${pageContext.request.contextPath}" />
		<div style="margin-top: 10px;">
		<form:form action="${contextPath}/Ticket_Selling/thucHienThemMoiGioChieu"
			method="GET" modelAttribute="schedule">
			<div class="form-group row" style="display: none;">
				<label class="col-sm-4 col-form-label">Mã giờ chiếu:</label>
				<div class="col-sm-8">
					<form:input path="scheduleID" name="scheduleID" id="scheduleID"
						type="text" class="form-control" value = "0"></form:input>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Nhập giờ chiếu:</label>
				<div class="col-sm-8">
					<form:input path="scheduleTime" name="scheduleTime" id="scheduleTime"
						type="time" class="form-control" required="required"></form:input>
				</div>
			</div>
			<div class="row" style="height: 20px"></div>
			<form:button style="float: right; width: 150px;" type="submit"
				class="btn btn-primary">
				<i class="fa fa-check" aria-hidden="true"></i>&ensp;Thêm mới
			</form:button>
		</form:form>
		<button style="float: right; margin-right: 10px; width: 150px;"
			class="btn btn-primary"
			onclick="location.href='<c:url value ='/Ticket_Selling/listGioChieu'/>';">
			<i class="fa fa-arrow-left" aria-hidden="true"></i>&ensp;Quay lại
		</button>
</div>
	</div>
</div>

