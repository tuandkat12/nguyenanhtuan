<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp"%>
<div class="col-md-8" id="content">
	<!-- <body class="box-body"> -->
	<div class="box-wrapper container-fluid">
		<div>
			<p class="text-show-time">THAY ĐỔI MẬT KHẨU</p>
		</div>
		<div align="center" style="margin-top: 10px">
			<c:if test="${param['change']}">
				<p style="color: green;">Thay đổi mật khẩu thành công!</p>
			</c:if>
			<c:if test="${param['change']==false}">
				<p style="color: red">Mật khẩu hiện tại không đúng</p>
			</c:if>
		</div>
		<c:set var="contextPath" value="${pageContext.request.contextPath}" />
		<form:form
			action="${contextPath}/updatePassword"
			method="POST" modelAttribute="newPass">
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Nhập Password hiện tại:</label>
				<div class="col-sm-8">
					<form:input path="oldPass" name="oldPass" id="oldPass"
						type="password" class="form-control" required="required"
						></form:input>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Nhập Password mới:</label>
				<div class="col-sm-8">
					<form:input path="newPass1" name="newPass1" id="newPass1"
						type="password" class="form-control" required="required"
						></form:input>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Xác nhận Password:</label>
				<div class="col-sm-8">
					<form:input path="confirmPass" name="confirmPass" id="confirmPass"
						type="password" class="form-control" required="required"
						></form:input>
					<div class="valid-feedback position-absolute">Match</div>
					<div class="invalid-feedback position-absolute">Password wrong</div>
				</div>
			</div>			
			<button style="float: right; width: 150px;" id="btnsm" type="submit"
				class="btn btn-primary">
				<i class="fa fa-check" aria-hidden="true"></i>&ensp;Cập nhật
			</button>
		</form:form>
		<button style="float: right; margin-right: 10px; width: 150px;"
			class="btn btn-primary"
			onclick="location.href='<c:url value ='/Ticket_Selling/homePage'/>';">
			<i class="fa fa-arrow-left" aria-hidden="true"></i>&ensp;Quay lại
		</button>
	</div>
	<script src="<c:url value='/resources/library/popper.min.js'/>"></script>
	<script src="<c:url value='/resources/js/form-validation.js'/>"></script>
	<script>
		$(document).ready(function(){
			
			$("[name='confirmPass']").keyup(function(e){
				let newPc = $("#oldPass").val();
				let newP1 = $("#newPass1").val();
				let confirmP = $("#confirmPass").val();
				if(newP1===confirmP){
					$('#btnsm').attr('disabled',false);
					$("[name='confirmPass']").removeClass('is-invalid');
					$("[name='confirmPass']").addClass('is-valid');
				} else{					
					$('#btnsm').attr('disabled',true);
					$("[name='confirmPass']").removeClass('is-valid');
					$("[name='confirmPass']").addClass('is-invalid');
				}
			});
		});
	</script>
</div>

<%@include file="include/footer.jsp"%>