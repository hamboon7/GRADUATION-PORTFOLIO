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

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />


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
a.nav-link2{
	color: #000;
	padding: 0;
}
#menu {
	background-color: #e9e9e9;
}

#submenu2 {
	background-color: #fff;
}
.main{
	margin-top: 20px;
}
.card-inverse {
	margin: 5px 0;
	color: rgba(255,255,255,1);
}
table {
  text-align: center;
  line-height: 40px;
  border-collapse: separate;
  border-spacing: 0;
  border: 2px solid #f2cb05;
  width: 120%;
  border-radius: .25rem;
}

thead tr:first-child {
  background: #f2cb05;
  color: #000;
  border: none;
}

th:first-child,
td:first-child {
  
  padding: 0 15px 0 20px;
}

th {
  text-align: center;
  font-weight: 500;
}

thead tr:last-child th {
  border-bottom: 3px solid #ddd;
}

tbody tr:last-child td {
  border: none;
}

tbody td {
  border-bottom: 1px solid #ddd;
}

td:last-child {
  text-align: center;
  padding-right: 10px;
}
.edit {
  color: #ddd;
}
.edit:hover {
  color: #033e8c;
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
	.card {
		margin-bottom: 10px;
	}
	
	.img-fluid {
		width: 100%;
	}
	
	.img-fluid {
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
	.card {
		margin-bottom: 10px;
	}
	
	.img-fluid {
		width: 100%;
	}
	.img-fluid {
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
			<a class="navbar-brand mb-1" href="Controller?cmd=adminAction">Modori</a>
		</div>
		<div class="navbar-collapse collapse" id="collapsingNavbar">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link">개발 관리자</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="logout nav-item"><a class="nav-link"
					href="Controller?cmd=logoutAction">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<div class="col-md-3 col-lg-2 sidebar-offcanvas" id="sidebar"
				role="navigation">
				<ul class="nav flex-column pl-1">
					<li class="nav-item">
						<a class="nav-link" href="#submenu1" data-toggle="collapse" data-target="#submenu1">매출 관리 ▾</a>
						<ul class="list-unstyled flex-column pl-3 collapse" id="submenu1"
							aria-expanded="false">
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productTouchAdminAction">수익금 관리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=1">여성의류</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=2">여성신발</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=3">여성가방</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=5">지갑&벨트</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=6">쥬얼리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=7">시계</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=4">언더웨어</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=8">잡화/소품</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=9">스킨케어</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=10">메이크업</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=11">선케어</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=12">향수</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=13">뷰티소품</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=14">네일</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=15">생필품</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=16">가전/디지털</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=17">애완용품</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=productAdminAction&category=18">티켓</a></li>
						</ul></li>
					<li class="nav-item" id="menu"><a class="nav-link" href="#submenu2"
						data-toggle="collapse" data-target="#submenu2">신고회원 관리 ▾</a>
						<ul class="list-unstyled flex-column pl-3 collapse" id="submenu2"
							aria-expanded="false">
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=declareAdminAction">신고관리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=declareWithdrawAdminAction">탈퇴관리</a></li>
						</ul></li>
				</ul>
			</div>
			<!--/col-->

			<div class="col-md-9 col-lg-10 main">
				<c:forEach items="${studentFireCalData}" var="studentVO">
					<div class="row mb-3">
						<div class="col-xl-12 col-lg-12">
							<div class="card card-inverse card-success">
								<div class="card-block bg-success">
									<div class="rotate">
										<i class="fa fa-user fa-5x"></i>
									</div>
									<h4 class="text-uppercase">총 신고횟수</h4>
									<h3 class="display-1">${studentVO.count}</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/row-->
				</c:forEach>
				<hr>
				<div class="row placeholders mb-3">
					<div class="col-10 placeholder">
						<div>
							<table>
							  <thead>
							    <tr>
							      <th colspan="7">신고 정보</th>
							    </tr>
							    <tr>
							      <th>신고자 학번</th>
							      <th>신고당한 학번</th>
							      <th>물품 이름</th>
							      <th>신고 이유</th>
							      <th>신고 날짜</th>
							      <th>회원 상태</th>
							      <th>탈퇴 취소</th>
							      <th></th>
							    </tr>
							  </thead>
							  <tbody>
							  <c:forEach items="${studentFireData}" var="studentVO">
							    <input type="hidden" name="num" value="${studentVO.declare_num}">
							    <tr>
							      <td><a href="Controller?cmd=memberInfoAction&reporter_stu_num=${studentVO.declare_stu_num}" class="nav-link2">${studentVO.declare_stu_num}</a></td>
							      <td><a href="Controller?cmd=memberInfoAction&reporter_stu_num=${studentVO.reporter_stu_num}" class="nav-link2">${studentVO.reporter_stu_num}</a></td>
							      <td>${studentVO.declare_pro_name}</td>
							      <td>${studentVO.declare_category}</td>
							      <td>${studentVO.declare_date}</td>
							      <td>${studentVO.stu_status}</td>
							      <td>
									<a href="Controller?cmd=memberFireCancleAction&reporter_stu_num=${studentVO.reporter_stu_num}" 
										onclick="return confirm('정말로 탈퇴를 취소하시겠습니까?')">
										<i class="material-icons button edit">edit</i>
									</a>
								  </td>
							    </tr>
							  </c:forEach>
							  </tbody>
							</table>
						</div>
					</div>
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