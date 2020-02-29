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

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" />


<style type="text/css">
.display-1 {
    font-size: 3rem;
}
.navbar {
	background-color: #f2cb05;
}
.navbar-inverse .navbar-brand, .navbar-inverse .navbar-nav .active>.nav-link {
	color: #000;
}
.navbar-inverse .navbar-nav .nav-link {
    color: #000;
}

#sidebar {
	padding-left: 0;
}

a.nav-link{
	color: #000;
}

#menu {
	background-color: #e9e9e9;
}

#submenu2 {
	background-color: #fff;
}
.card-inverse {
	margin: 5px 0;
	color: rgba(255,255,255,1);
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
	color: #000;
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
		width: 100%;
		height: 100%;
	}
	.card {
		margin-bottom: 10px;
	}
	
	.card-deck {
		width: 100%;
	}
	
	.card-deck img {
		height: 400px;
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
		width: 100%;
	}
	.card {
		margin-bottom: 10px;
	}
	
	.card-deck {
		width: 100%;
	}
	.card-deck img {
		height: 400px;
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
			<a class="navbar-brand mb-1" href="#Controller?cmd=studentAdminAction">Modori</a>
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
					<li class="nav-item"><a class="nav-link"
						href="#submenu1" data-toggle="collapse" data-target="#submenu1">바자회
							관리 ▾</a>
						<ul class="list-unstyled flex-column pl-3 collapse" id="submenu1"
							aria-expanded="false">
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazaarInfoAction">바자회 등록 관리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=bazaarEnrollUI">바자회 도서 등록</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazaarTouchAction">바자회 수익 관리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazaarAction&number=6">6회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazaarAction&number=5">5회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazaarAction&number=4">4회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazaarAction&number=3">3회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazaarAction&number=2">2회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazaarAction&number=1">1회</a></li>
						</ul></li>
					<li class="nav-item" id="menu"><a class="nav-link" href="#submenu2"
						data-toggle="collapse" data-target="#submenu2">대여/예약 관리 ▾</a>
						<ul class="list-unstyled flex-column pl-3 collapse" id="submenu2"
							aria-expanded="false">
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=bookEnrollUI">도서등록</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBookEnrollCountAction">도서 재고관리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBookCountAction">대여/예약관리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilDamageAction&number=1">훼손관리</a></li>
						</ul></li>
				</ul>
			</div>
			<!--/col-->

			<div class="col-md-9 col-lg-10 main">
				<c:forEach items="${bookDamageCalData}" var="studentVO">
					<p class="lead hidden-xs-down">훼손 관리</p>
					<div class="row mb-3">
						<div class="col-xl-12 col-lg-12">
							<div class="card card-inverse card-success">
								<div class="card-block bg-success">
									<div class="rotate">
										<i class="fa fa-book fa-5x"></i>
									</div>
									<h4 class="text-uppercase">총 훼손책 수</h4>
									<h2 class="display-1">${studentVO.allCount}</h2>
								</div>
							</div>
						</div>
					</div>
					<!--/row-->

				</c:forEach>
				<hr>
				<div class="row placeholders mb-3">
					<c:forEach items="${bookDamageData}" var="studentVO">
						<div class="col-6 col-sm-4 placeholder">
							<div class="card">
								<input type="hidden" name="num" value="${studentVO.book_num}">
								<img class="card__image" src="img/${studentVO.book_img}" height="300" />
								<div class="card-block">
									<h4 class="card-title">
										<c:out value="${studentVO.book_name}" />
										<span class="badge badge-warning">훼손</span>
									</h4>
									<h5>
										등록자 : ${studentVO.stu_num}
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

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>


	<script>
	    $(document).ready(function() {
	      $("[data-toggle=offcanvas]").click(function() {
	        $(".row-offcanvas").toggleClass("active");
	      });
	    });
  	</script>

</body>

</html>