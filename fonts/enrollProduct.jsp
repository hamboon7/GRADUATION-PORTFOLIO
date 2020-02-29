<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
<title>모도리 중고 거래</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a32c0865ec.js"
	crossorigin="anonymous"></script>

<style>
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
.d-flex {
	background-color: #f2cb05;
}
.card h-100 {
	max-height: 50px;
}

.carousel-inner {
	height: 360px;
}
.col, .dropdown-menu {
	text-align: center;
}
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

html, body {
	overflow-x: hidden; /* Prevent scroll on narrow devices */
}

@media ( max-width : 991.98px) {
	.offcanvas-collapse {
		position: fixed;
		top: 56px; /* Height of navbar */
		bottom: 0;
		left: 100%;
		width: 100%;
		padding-right: 1rem;
		padding-left: 1rem;
		overflow-y: auto;
		visibility: hidden;
		background-color: #343a40;
		transition: visibility .3s ease-in-out, -webkit-transform .3s
			ease-in-out;
		transition: transform .3s ease-in-out, visibility .3s ease-in-out;
		transition: transform .3s ease-in-out, visibility .3s ease-in-out,
			-webkit-transform .3s ease-in-out;
	}
	.offcanvas-collapse.open {
		visibility: visible;
		-webkit-transform: translateX(-100%);
		transform: translateX(-100%);
	}
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: nowrap;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	color: rgba(255, 255, 255, .75);
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

.nav-underline .nav-link {
	padding-top: .75rem;
	padding-bottom: .75rem;
	font-size: .875rem;
	color: #6c757d;
}

.nav-underline .nav-link:hover {
	color: #007bff;
}

.nav-underline .active {
	font-weight: 500;
	color: #343a40;
}

.text-white-50 {
	color: rgba(255, 255, 255, .5);
}

.bg-purple {
	background-color: #6f42c1;
}

.lh-100 {
	line-height: 1;
}

.lh-125 {
	line-height: 2.5;
}

.lh-150 {
	line-height: 1.5;
}

#dropdownMenuButton {
	margin-right: 10px;
}

#name {
	float: left;
	margin-bottom: 10px;
}

blockquote {
	float: left;
}

.media {
	margin: 0 0 -20px 0;
}

#check0 {
	margin-top: 20px;
}
button {
	float: right;
}
.mr-3 {
	float: right;
}
</style>

</head>
<body>
	<jsp:include page="nav.jsp" />
	<div class="container">
		<div class="d-flex align-items-center p-3 my-4 rounded box-shadow" id="mypage">
			<img class="mr-3" src="img/profile.png" alt="" width="100"
				height="100">
			<div class="lh-100" id="myinfo">
				<h6 class="mb-0 lh-100">${loginOK}님</h6>
				<c:forEach items="${myData}" var="myPageVO">
					<p><c:out value="${myPageVO.name}" /> / <c:out value="${myPageVO.department}" />
					<br>
					<p><c:choose>
						<c:when test='${myPageVO.total_score >= 4.5}'>
							<img src="img/diamond.png" alt="gold" width="25" height="25" />
						</c:when>
						<c:when test='${myPageVO.total_score >= 4.0}'>
							<img src="img/gold.png" alt="gold" width="25" height="25" />
						</c:when>
						<c:when test='${myPageVO.total_score >= 3.5}'>
							<img src="img/silver.png" alt="silver" width="25" height="25" />
						</c:when>
						<c:when test='${myPageVO.total_score >= 3.0}'>
							<img src="img/bronze.png" alt="silver" width="25" height="25" />
						</c:when>
					</c:choose>
					평점 : <c:out value="${myPageVO.total_score}" />
				</c:forEach>
			</div>
		</div>
		<div class="my-3 p-3 bg-white rounded box-shadow">
			<h6 class="border-bottom border-gray pb-2 mb-4">등록한 상품</h6>
			<div class="row">
				<c:forEach items="${enrollProductData}" var="enrollProductVO">
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a class="purchase" href="Controller?cmd=myPageEnrollPurchaseAction&number=${enrollProductVO.num}">
								<input type="hidden" name="num" value="${enrollProductVO.num}">
								<img class="card-img-top" src="img/${enrollProductVO.img1}" alt="${enrollProductVO.img1}" height="300">
								<div class="card-body">
									<h5 class="card-title">
										<span class="badge badge-success"> 
											일반 상품
										</span>
										<c:out value="${enrollProductVO.name}" />
									</h5>
									<h6>
										<span class="badge badge-warning"> 
										<c:out value="${enrollProductVO.sell_condition}" /></span>
									</h6>
									<h6>
										구매자 출금 상태 : <span class="badge badge-primary"> 
										<c:out value="${enrollProductVO.buyer_condition}" /></span>
									</h6>
									<h6>
										판매자 입금 상태 : <span class="badge badge-primary"> 
										<c:out value="${enrollProductVO.seller_condition}" /></span>
									</h6>
									<h6>
										가격 <fmt:formatNumber value="${enrollProductVO.price}" pattern="###,###,###" />원
									</h6>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>
				<c:forEach items="${enrollBazaarData}" var="enrollBazaarVO">
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a class="purchase" href="Controller?cmd=myPageEnrollPurchaseAction&number=${enrollBazaarVO.num}">
								<input type="hidden" name="num" value="${enrollBazaarVO.num}">
								<img class="card-img-top" src="img/${enrollBazaarVO.img1}" alt="${enrollBazaarVO.img1}" height="300">
								<div class="card-body">
									<h5 class="card-title">
										<span class="badge badge-info"> 
											바자회 상품
										</span>
										<c:out value="${enrollBazaarVO.name}" />
									</h5>
									<h6>
										<span class="badge badge-warning"> 
										<c:out value="${enrollBazaarVO.sell_condition}" /></span>
									</h6>
									<h6>
										구매자 출금 상태 : <span class="badge badge-primary"> 
										<c:out value="${enrollBazaarVO.buyer_condition}" /></span>
									</h6>
									<h6>
										판매자 입금 상태 : <span class="badge badge-primary"> 
										<c:out value="${enrollBazaarVO.seller_condition}" /></span>
									</h6>
									<h6>
										가격 <fmt:formatNumber value="${enrollBazaarVO.price}" pattern="###,###,###" />원
									</h6>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>
				<c:forEach items="${enrollGroupData}" var="enrollGroupBuyingVO">
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a class="purchase" href="Controller?cmd=myPageEnrollPurchaseAction&number=${enrollGroupBuyingVO.groupBuying_num}">
								<input type="hidden" name="num" value="${enrollGroupBuyingVO.groupBuying_num}">
								<img class="card-img-top" src="img/${enrollGroupBuyingVO.groupBuying_img}" alt="${enrollGroupBuyingVO.groupBuying_img}" height="300">
								<div class="card-body">
									<h5 class="card-title">
										<span class="badge badge-danger"> 
											공동구매 상품
										</span>
										<c:out value="${enrollGroupBuyingVO.product_name}" />
									</h5>
									<h6>
										가격 <fmt:formatNumber value="${enrollGroupBuyingVO.price}" pattern="###,###,###" />원
									</h6>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>
				<c:forEach items="${enrollAuctionData}" var="enrollAuctionVO">
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a class="purchase" href="Controller?cmd=myPageEnrollPurchaseAction&number=${enrollAuctionVO.auction_num}">
							<input type="hidden" name="num" value="${enrollAuctionVO.auction_num}">
							<div class="card-body">
								<h4 class="card-title">
									<c:out value="${enrollAuctionVO.comment}" />
								</h4>
							</div>
							</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
  </body>
</html>