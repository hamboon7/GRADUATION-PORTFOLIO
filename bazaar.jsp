<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>모도리 중고 거래</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a32c0865ec.js"
	crossorigin="anonymous"></script>

<style type="text/css">
.container {
	margin-top: 20px;
}
a.purchase {
	color: #000;
}
a.purchase:hover {
	text-decoration: none;
	color: #000;
}
.float{
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	right:40px;
	background-color:#f2cb05;
	color:#FFF;
	border-radius:50px;
	text-align:center;
	box-shadow: 2px 2px 3px #999;
	z-index: 2;
}

.my-float{
	margin-top:22px;
	
}
select {
	margin: 20px;
	padding: 20px;
}

.col, .dropdown-menu {
	text-align: center;
}
img.finish__image {
	opacity: 0.7;
    filter: grayscale(100%);
    -webkit-filter: grayscale(100%);
}
</style>

</head>

<body>
	<jsp:include page="nav.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="container">
					<div class="row">
						<div class="dropdown text-right">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="dropdownMenuButton" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								최신순
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"
									x-placement="bottom-start"
									style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 38px, 0px);">
									<a class="dropdown-item" href="#">가격 낮은 순</a> 
									<a class="dropdown-item" href="#">가격 높은 순</a>
								</div>
							</button>
						</div>
						<a href="Controller?cmd=bazaarEnrollUI" class="float">
							<i class="fa fa-plus my-float"></i>
						</a>
					</div>
				</div>
				<hr>
				<div class="row">
					<c:forEach items="${bazaarData}" var="bazaarVO">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a class="purchase" href="Controller?cmd=bazaarPurchaseAction&number=${bazaarVO.num}">
									<input type="hidden" name="num" value="${bazaarVO.num}">
									<c:choose>
										<c:when test="${bazaarVO.sell_condition == '거래 완료'}">
											<img class="finish__image" src="img/${bazaarVO.img1}" width="100%" height="300" />
										</c:when>
										<c:otherwise>
											<img class="card__image" src="img/${bazaarVO.img1}" width="100%" height="300" />
										</c:otherwise>
									</c:choose>
									<div class="card-body">
										<h5 class="card-title">
											<c:out value="${bazaarVO.name}" /></h5>
											<h6>상품상태 : <span class="badge badge-primary">
											<c:out value="${bazaarVO.pro_condition}" /></span> 
											<span class="badge badge-warning"> 
											<c:out value="${bazaarVO.sell_condition}" /></span><br/>
											가격 <fmt:formatNumber value="${bazaarVO.price}" pattern="###,###,###" />원
										</h6>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<!-- Footer -->
	<footer class="py-5 bg-warning">
		<div class="container">
			<p class="m-0 text-center text-black">Copyright &copy; MODORI</p>
		</div>
		<!-- /.container -->
	</footer>
</body>

</html>
