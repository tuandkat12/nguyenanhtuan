<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="include/header.jsp"%>
<div class="col-md-8" id="content">
<!-- <body style="background-color: #eff0f3"> -->
	<div>
		<div>
			<p class="text-show-time">THÔNG TIN CHI TIẾT PHIM</p>
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
						<div class="col-sm-12">
							<label class="label-value">${movie.content}</label>
						</div>
					</div>
				</div>
			</div>
			<div class="box-movie row"> 
				<div class="box-img-movie col-sm-2">
					<iframe width="876" height="364" src="https://www.youtube.com/embed/6ZfuNTqbHE8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
			</div>
		</div>		

		
		</div>
	</div>
	<%@include file="include/footer.jsp" %>
