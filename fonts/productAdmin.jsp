<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Bootstrap 4 Dashboard</title>
<base target="_self">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" value="notranslate">
<link rel="shortcut icon" href="/images/cp_ico.png">

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" />


<style type="text/css">
body, html {
	height: 100%;
}
/* workaround modal-open padding issue */
body.modal-open {
	padding-right: 0 !important;
}
.display-1 {
    font-size: 3rem;
}
.navbar {
	background-color: #f2cb05;
}
.navbar-inverse .navbar-nav .nav-link {
    color: #fff;
}

#sidebar {
	padding-left: 0;
}

a.nav-link {
	color: #000;
}

#menu {
	background-color: #e9e9e9;
}

#submenu1 {
	background-color: #fff;
}
.card img {
	height: 300px;
}
.card-title {
	margin-bottom: 10px;
}
.price {
	text-decoration: line-through;
}
.badge {
	top: 5px;
}

/*
 * Off Canvas at medium breakpoint
 * --------------------------------------------------
 */
@media screen and (max-width: 48em) {
	.row-offcanvas {
		position: relative;
		-webkit-transition: all 0.25s ease-out;
		-moz-transition: all 0.25s ease-out;
		transition: all 0.25s ease-out;
	}
	.row-offcanvas-left .sidebar-offcanvas {
		left: -33%;
	}
	.row-offcanvas-left.active {
		left: 33%;
		margin-left: -6px;
	}
	.sidebar-offcanvas {
		position: absolute;
		top: 0;
		width: 33%;
		height: 100%;
	}
	.card img {
		height: 300px;
	}
}
/*
 * Off Canvas wider at sm breakpoint
 * --------------------------------------------------
 */
@media screen and (max-width: 34em) {
	.row-offcanvas-left .sidebar-offcanvas {
		left: -45%;
	}
	.row-offcanvas-left.active {
		left: 45%;
		margin-left: -6px;
	}
	.sidebar-offcanvas {
		width: 45%;
	}
	.card img {
		height: 300px;
	}
}

.card {
	overflow: hidden;
}

.card-block .rotate {
	z-index: 8;
	height: 100%;
}

.card-block .rotate i {
	color: rgba(20, 20, 20, 0.15);
	position: absolute;
	left: 0;
	left: auto;
	right: -10px;
	bottom: 0;
	display: inline-block;
	-webkit-transform: rotate(-44deg);
	-moz-transform: rotate(-44deg);
	-o-transform: rotate(-44deg);
	-ms-transform: rotate(-44deg);
	transform: rotate(-44deg);
}
</style>

</head>

<body>
	<nav
		class="navbar navbar-fixed-top navbar-toggleable-sm navbar-inverse mb-3">
		<button type="button" class="navbar-toggler navbar-toggler-right"
			data-toggle="offcanvas" title="Toggle responsive left sidebar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="flex-row d-flex">
			<a class="navbar-brand mb-1" href="Controller?cmd=studentAdminAction">Modori</a>
		</div>
		<div class="navbar-collapse collapse" id="collapsingNavbar">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link">학생회 관리자</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link"
					href="Controller?cmd=logoutAction">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<div class="col-md-3 col-lg-2 sidebar-offcanvas" id="sidebar"
				role="navigation">
				<ul class="nav flex-column pl-1">
					<li class="nav-item" id="menu"><a class="nav-link"
						href="#submenu1" data-toggle="collapse" data-target="#submenu1">바자회
							관리 ▾</a>
						<ul class="list-unstyled flex-column pl-3 collapse" id="submenu1"
							aria-expanded="false">
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarInfoAction">바자회 관리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=6">6회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=5">5회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=4">4회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=3">3회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=2">2회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=1">1회</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="#submenu2"
						data-toggle="collapse" data-target="#submenu2">대여/예약 관리 ▾</a>
						<ul class="list-unstyled flex-column pl-3 collapse" id="submenu2"
							aria-expanded="false">
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBookAddAction">도서등록</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBookCountAction">재고관리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilDamageAction&number=1">훼손관리</a></li>
						</ul></li>
				</ul>
			</div>
			<!--/col-->

			<div class="col-md-9 col-lg-10 main">
				<c:forEach items="${bazaarCalData}" var="studentVO">
					<p class="lead hidden-xs-down">${studentVO.bazInfo_num}회 바자회 관리</p>
					<div class="row mb-3">
						<div class="col-xl-6 col-lg-6">
							<div class="card card-inverse card-success">
								<div class="card-block bg-success">
									<div class="rotate">
										<i class="fa fa-user fa-5x"></i>
									</div>
									<h4 class="text-uppercase">총 책수</h4>
									<h3 class="display-1">${studentVO.bazaar_count}권</h3>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-lg-6">
							<div class="card card-inverse card-danger">
								<div class="card-block bg-danger">
									<div class="rotate">
										<i class="fa fa-list fa-4x"></i>
									</div>
									<h4 class="text-uppercase">총 매출</h4>
									<h3 class="display-1">
										<fmt:formatNumber value="${studentVO.bazaar_sum}" pattern="###,###,###" /> 원
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/row-->

				</c:forEach>
				<hr>
				<div class="row placeholders mb-3">
					<c:forEach items="${bazaarData}" var="studentVO">
						<div class="col-6 col-sm-4 placeholder">
							<div class="card">
								<img src="img/${studentVO.img1}" class="center-block img-fluid" alt="img/${studentVO.img1}">
								<div class="card-block">
									<h4 class="card-title">
										<c:out value="${studentVO.name}" />
										<c:choose>
											<c:when test="${studentVO.sell_condition == 0}">
												<span class="badge badge-warning">등록</span>
											</c:when>
											<c:when test="${studentVO.sell_condition == 1}">
												<span class="badge badge-warning">거래 중</span>
											</c:when>
											<c:otherwise>
												<span class="badge badge-warning">거래 완료</span>
											</c:otherwise>
										</c:choose>
									</h4>
									<h5>
										판매자 : <c:out value="${studentVO.stu_seller_num}" />
										<br>
										<c:choose>
											<c:when test="${studentVO.stu_buyer_num == 0}">
												구매자 : X
											</c:when>
											<c:when test="${studentVO.stu_buyer_num == null}">
												구매자 : X
											</c:when>
											<c:otherwise>
												구매자 : <c:out value="${studentVO.stu_buyer_num}" />
											</c:otherwise>
										</c:choose>
									</h5>
									<h5>
										<c:choose>
											<c:when test="${studentVO.sale == 0}">
												가격 : <fmt:formatNumber value="${studentVO.price}"
															pattern="###,###,###" /> 원
											</c:when>
											<c:otherwise>
												가격 : <span class="price"><fmt:formatNumber value="${studentVO.price}" pattern="###,###,###" /> 원</span>
												<fmt:formatNumber value="${studentVO.price-studentVO.sale}" pattern="###,###,###" /> 원
											</c:otherwise>
										</c:choose>
									</h5>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!--/card-columns-->
	</div>
	<!--/main col-->
	<!--/.container-->

	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>


	<script>
	    $(document).ready(function() {
	      $("[data-toggle=offcanvas]").click(function() {
	        $(".row-offcanvas").toggleClass("active");
	      });
	    });
  	</script>

</body>

</html>