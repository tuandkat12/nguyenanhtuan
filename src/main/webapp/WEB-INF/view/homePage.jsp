<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="include/header.jsp"%>
<style>
#content-movie{
	width: 100%;
	height: 1.5em;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>
<div class="col-md-8" id="content">
		<div align="center" style="margin-top: 10px">
			<c:if test="${param['error']}">
			<label
				style="font-size: 28px; color: red; font-family: arial; text-align: center; width: 100%;">Không tồn tại dữ liệu tương ứng!</label>
			</c:if>
		</div>
		<div class="col-12">
            <div class="row">
            <c:forEach var="movie" items="${listMovie }">
              <div class="col-4 mb-4">
                <div class="card">
                  <img src="<c:url value='/resources/img/${movie.smallImage}'/>" class="card-img-top" style="height: 400px">
                  <div class="card-body">
                    <h5 class="card-title" style="text-align: center;"><a href='<c:url value="/Ticket_Selling/trailer/${movie.movieID }" />'>${movie.movieNameVN}</a> </h5>
                    <p class="card-text"> <p id="content-movie">${movie.content}</p> <a href="<c:url value="/Ticket_Selling/trailer/${movie.movieID }"/>">Xem thêm</a> </p>
                  </div>
                </div>
              </div>   
             </c:forEach>           
            </div>
          </div>		
</div>

</div>
<%@include file="include/footer.jsp"%>
</div>
