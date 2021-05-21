<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="include/header.jsp"%>
<div class="col-md-8" id="content">
<!-- <body style="background-color: #eff0f3"> -->
	<div>
		<div>
			<p class="text-show-time">THÔNG TIN TRAILER PHIM</p>
		</div>
			<div class="shadow p-3 mb-3 bg-white rounded">
			<div class="box-movie row">
				<div class="box-img-movie col-sm-2">
					<img
						src="<c:url value='/resources/img/${movie.smallImage}'/>"
						class="img-fluid">
				</div>
				<div class="col-sm-10">
					<label class="text-movie-name">${movie.movieNameVN}</label>
					<hr>
					<div class="row">
						<div class="col-sm-5">
							<label class="label-attribute">Đạo diễn:</label>
						</div>
						<div class="col-sm-7">
							<label class="label-value">${movie.director}</label>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-5">
							<label class="label-attribute">Thời lượng:</label>
						</div>
						<div class="col-sm-7">
							<label class="label-value">${movie.duration}&nbsp;phút</label>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-5">
							<label class="label-attribute">Nội dung:</label>
						</div>
						<div class="col-sm-7">
							<label class="label-value">${movie.content}</label>
						</div>
					</div>					
					<hr>
				</div>
			</div>
		</div>		
		<div class="shadow p-3 mb-3 bg-white rounded">
			<div class="box-movie row">
				<div class="col-12" style="align-item: center;">
					<c:if test="${movie.movieID eq 'MV00001' }">
					<iframe width="876" height="364" src="https://www.youtube.com/embed/6ZfuNTqbHE8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</c:if>
					<c:if test="${movie.movieID eq 'MV00002' }">
						<iframe width="727" height="409" src="https://www.youtube.com/embed/w7pYhpJaJW8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</c:if>
				</div>
			</div>
		 </div>
			
		</div>
		<a class="btn btn-primary" style="float: right;"
			href="<c:url value ='/Ticket_Selling/'/>"><i class="fa fa-home"
			aria-hidden="true"></i>&nbsp;&nbsp; Về trang chủ</a>
	</div>
	<%@include file="include/footer.jsp" %>
