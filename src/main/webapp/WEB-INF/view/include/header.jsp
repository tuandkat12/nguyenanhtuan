<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon"
	href="<c:url value='/resources/img/ticket.png'/>">
<title>APPLE THEATER</title>
<script
	src="<c:url value='/resources/library/jquery-3.3.1.slim.min.js' />"></script>
<script src="<c:url value='/resources/library/jquery-3.4.1.min.js'/>"></script>
<script
	src="<c:url value='/resources/library/datatablejs/media/js/jquery.dataTables.js'/>"></script>
<script src="<c:url value='/resources/library/popper.min.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/library/datatablejs/media/css/jquery.dataTables.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/library/bootstrap.min.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/library/font-awesome.min.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/library/style.css'/>">
<script src="<c:url value='/resources/library/font-awesome.min.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/showTimes.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/customReset.css'/>">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.contain-logout{
	position: absolute;
    right: 15px;
    top: 51px;
    padding: 0px 40px;
    height: auto;
    background-color: mediumseagreen;
    color: white;
    border-radius: 10px;
    z-index:2;   
}
</style>
</head>
<body>
	<div class="col-md-12"
		style="background-color: #ACCB6E; margin-bottom: 30px">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a style="color: white; font-size: 30px" class="navbar-brand fpt"
						href="<c:url value ='/Ticket_Selling/'/>"><i
						class="fa fa-home" aria-hidden="true"></i>&ensp;APPLE MOVIE THEATER</a>
				</div>
				<!-- Search form -->
				<c:set var="contextPath" value="${pageContext.request.contextPath}" />
				<div align="center">
					<form class="form-inline" style="width: 600px"
						action="${contextPath}/Ticket_Selling/searchPhim" method="get">
						<input class="form-control form-control-sm mr-3 w-75" type="text"
							placeholder="Nhập tên phim ..." aria-label="Search" name="movie" />
						<button style="background-color: #ACCB6E; border: none;"
							type="submit" value="Submit">
							<i class="fa fa-search" aria-hidden="true" style="color: white;"></i>
						</button>
					</form>
				</div>
				<ul class="nav navbar-nav navbar-right d-flex flex-row">
					<c:if test="${account ne null}">
						<li class="account-focus" style="color: white;">Hi, ${account.getAccountID()}</li>
						<div class="row contain-logout text-center" style="display: none;">
						<ul>
							<c:if test="${account.roles.roleID lt 3}">
							<li class="mt-1"><a style="color: white" href="${pageContext.request.contextPath}/register"><i
							class="fa fa-registered" style="color: white;"></i> Register</a></li>
							</c:if>
							<li class="mt-1">Information</li>
							<li class="mt-1 mb-2"><a style="color: white" href="${pageContext.request.contextPath}/logout"><i
							class="fa fa-sign-out" aria-hidden="true" style="color: white;"></i> Logout</a></li> 
						</ul>
						</div>
					</c:if>
					<c:if test="${account eq null}">
						<li><a style="color: white" href="${pageContext.request.contextPath}/login"><i
							class="fa fa-sign-in" aria-hidden="true" style="color: white;"></i> Sign
							in</a></li>
					</c:if>
					
				</ul>
			</div>
		</nav>
	</div>
	<script>
		$(document).ready(function() {
			$(".account-focus").hover(function() {
				$(this).css("height","30px");
				$(this).css("cursor","default");
				$(".contain-logout").show("slow");
			});
			$(".contain-logout").hover(function(){
			//	$(".contain-logout").show("slow");
			},function(){
				$(".contain-logout").hide("slow");
				$(".account-focus").css("height","23px");
			});
		});
	</script>
	<%@include file="menuleft.jsp"%>
