<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp"%>
<div class="col-md-8" id="content">
	<!-- <body class="box-body"> -->
	<div class="box-wrapper container-fluid">
		<div>
			<p class="text-show-time">CẬP NHẬT NHÂN VIÊN</p>
		</div>
		<c:set var="contextPath" value="${pageContext.request.contextPath}" />
		<form:form
			action="${contextPath}/Ticket_Selling/thucHienUpdateAccount"
			method="POST" modelAttribute="account">
			<div class="form-group row" style="display: none;">
				<label class="col-sm-4 col-form-label">Mã nhân viên:</label>
				<div class="col-sm-8">
					<form:input path="accountID" name="accountID" id="accountID"
						type="text" class="form-control" value='${account.accountID}'
						readonly="true"></form:input>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Nhập tên nhân viên:</label>
				<div class="col-sm-8">
					<form:input path="fullName" name="fullName" id="fullName"
						type="text" class="form-control"
						></form:input>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Nhập ngày sinh:</label>
				<div class="col-sm-8">
					<form:input path="dateOfBirth" name="dateOfBirth" id="dateOfBirth"
						type="text" class="form-control"
						></form:input>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Nhập quê quán:</label>
				<div class="col-sm-8">
					<form:input path="address" name="address" id="address" type="text"
						class="form-control" ></form:input>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Nhập số điện thoại:</label>
				<div class="col-sm-8">
					<form:input path="phoneNumber" name="phoneNumber" id="phoneNumber"
						type="text" class="form-control" ></form:input>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Nhập email:</label>
				<div class="col-sm-8">
					<form:input path="email" name="email" id="email" type="text"
						class="form-control" ></form:input>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Nhập chứng minh nhân
					dân:</label>
				<div class="col-sm-8">
					<form:input path="identityCard" name="identityCard"
						id="identityCard" type="number" class="form-control"
						></form:input>
				</div>
			</div>
			<div class="form-group row" style="display: none;">
				<label class="col-sm-4 col-form-label">Nhập giới tính:</label>
				<div class="col-sm-8">
					<form:input path="gender" name="gender" id="gender" type="text"
						class="form-control"></form:input>
				</div>
			</div>
			<div class="form-group row" style="display: none;">
				<label class="col-sm-4 col-form-label">Nhập Password:</label>
				<div class="col-sm-8">
					<form:input path="password" name="password" id="password"
						type="text" class="form-control"
						></form:input>
				</div>
			</div>
			<div class="form-group row" style="display: none;">
				<label class="col-sm-4 col-form-label"> Nhập Username: </label>
				<div class="col-sm-8">
					<form:input path="userName" name="userName" id="userName"
						type="text" class="form-control"></form:input>
				</div>
			</div>
			<div class="form-group row" style="display: none;">
				<label class="col-sm-4 col-form-label">Nhập ngày đăng kí:</label>
				<div class="col-sm-8">
					<form:input path="registerDate" name="registerDate"
						id="registerDate" type="date" class="form-control"></form:input>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Nhập chức vụ:</label>
				<div class="col-sm-8">
					<form:select path="roles.roleID" name="roles.roleID"
						id="roles.roleID" class="form-control">
						<form:option value="1">Admin</form:option>
						<form:option value="2">Nhan vien</form:option>
					</form:select>
				</div>
			</div>
			<div class="form-group row" style="display: none;">
				<label class="col-sm-4 col-form-label">Nhập trạng thái:</label>
				<div class="col-sm-8">
					<form:input path="status" name="status" id="status" type="text"
						class="form-control"></form:input>
				</div>
			</div>
			<div class="row" style="height: 20px"></div>
			<form:button style="float: right; width: 150px;" type="submit"
				class="btn btn-primary">
				<i class="fa fa-check" aria-hidden="true"></i>&ensp;Cập nhật
			</form:button>
		</form:form>
		<button style="float: right; margin-right: 10px; width: 150px;"
			class="btn btn-primary"
			onclick="location.href='<c:url value ='/Ticket_Selling/movieList'/>';">
			<i class="fa fa-arrow-left" aria-hidden="true"></i>&ensp;Quay lại
		</button>
	</div>
</div>
<%@include file="include/footer.jsp"%>