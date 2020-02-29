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

.row {
	margin-top: 20px;
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
						<a href="Controller?cmd=groupBuyingEnrollUI" class="float">
							<i class="fa fa-plus my-float"></i>
						</a>
					</div>
				</div>
				<hr>

				<div class="row">
					<c:forEach items="${groupBuyingData}" var="groupBuyingVO">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a class="purchase" href="Controller?cmd=groupPurchaseAction&number=${groupBuyingVO.groupBuying_num}">
								<input type="hidden" name="num" value="${mainVO.groupBuying_num}">
								<img class="card-img-top" src="img/${groupBuyingVO.groupBuying_img}"
									alt="${groupBuyingVO.groupBuying_img}" width="250" height="300">
									<div class="card-body">
										<h4 class="card-title">
											
											<c:out value="${groupBuyingVO.product_name}" />
										</h4>
										<h5>
											가격
											<fmt:formatNumber value="${groupBuyingVO.price}" pattern="###,###,###" />원
										</h5>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- /.row -->

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

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
