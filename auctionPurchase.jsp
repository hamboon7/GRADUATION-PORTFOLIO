<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script src="https://kit.fontawesome.com/a32c0865ec.js"
	crossorigin="anonymous"></script>

<style type="text/css">

/*사용자 정보----------------------------------------------------------------*/
.friend {
	margin-top: 10px;
	margin-left: 5px;
	border-bottom: 1px solid #e7ebee;
}

.friend:hover {
	background: #f1f4f6;
	cursor: pointer;
}

.friend img {
	width: 50px;
	border-radius: 50%;
	margin: 15px;
	float: left;
}

.floatingImg {
	width: 40px;
	border-radius: 50%;
	position: absolute;
	top: 0;
	left: 12px;
	border: 3px solid #fff;
}

.friend p {
	padding: 15px 0 0 0;
	float: left;
	width: 220px;
}

.friend p strong {
	font-weight: 700;
	font-size: 15px;
}

.friend p span {
	font-size: 13px;
	font-weight: 400;
}

.friend p span strong {
	color: #f2cb05;
}

hr.style1 {
	margin-top: 80px;
	border-top: 1px solid #dcdcdc;
}

hr.style2 {
	border-top: 1px solid #dcdcdc;
}

h4 {
	letter-spacing: -3px;
	word-spacing: 5px;
}

.conten {
	margin-left: 20px;
	margin-right: 20px;
	margin-bottom: 30px;
}

.conten span {
	font-size: 13px;
	color: #a9a9a9;
}

h5 {
	margin-top: 10px;
	line-height: 170%;
}

.hh {
	font-weight: 500;
}

h6 strong {
	background-color: #000;
	color: #fff;
	padding: 4px 7px 4px 7px;
	border-radius: 45px;
}

ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

a {
	text-decoration: none;
}

nav {
	padding: 0 10px;
	transition: .5s;
	position: fixed;
	left: 0;
	right: 0;
	box-sizing: border-box;
	display: flex;
	align-items: center;
	justify-content: space-between;
	z-index: 1;
}

nav ul {
	display: flex;
	justify-content: flex-end;
}

nav ul li a {
	font-weight: bold;
	font-size: 14px;
	text-transform: uppercase;
	color: white;
	display: inline-block;
	padding: 15px 15px;
}

nav ul li a i {
	color: #000;
	vertical-align: top;
	margin-left: 5px;
}

header {
	height: 100vh;
	background: linear-gradient(0deg, rgba(0, 0, 139, 0.7),
		rgba(0, 0, 139, 0.7)),
		url("https://images.pexels.com/photos/380769/pexels-photo-380769.jpeg?h=350&auto=compress&cs=tinysrgb")
		no-repeat center center;
	background-size: cover;
}

section {
	height: 100vh;
}

nav.animate {
	background: white;
	box-shadow: 0px 1px 9px -5px;
}

nav.animate h1 {
	opacity: 1;
}

nav.animate ul li a {
	color: #000;
	border-top: none;
}

.bottom {
	padding: 0 10px;
	transition: .5s;
	position: fixed;
	left: 0;
	right: 0;
	bottom: 30px;
	box-sizing: border-box;
	display: flex;
	align-items: center;
	justify-content: space-between;
	z-index: 1;
}

.down {
	margin-bottom: 100px;
}

button {
	outline: 0;
	background: #f2cb05;
	width: 100%;
	border: 0;
	position: fixed;
	left: 0;
	bottom: 0px;
	padding: 13px;
	color: #fff;
	font-size: 17px;
	cursor: pointer;
}

.sale {
	text-decoration: line-through;
}
</style>
</head>
<body>

	<!--  nav ------------------------------------------------------------------------------------------------->
	<nav class="nav">
		<ul>
			<li class="dropdown"><a href="javascript:history.back();" class="dropped"><i
					class="fas fa-arrow-left fa-lg"></i> </a></li>
		</ul>
	</nav>

	<!--  body ------------------------------------------------------------------------------------------------->
	<c:forEach items="${auctionDetailData}" var="auctionVO">
		<input type="hidden" name="num" value="${auctionVO.auction_num}">
		<div id="friends">
			<div class="friend">
				<c:choose>
					<c:when test='${auctionVO.total_score >= 4.5}'>
						<img src="img/s4.png" alt="gold" width="50" height="50" />
					</c:when>
					<c:when test='${auctionVO.total_score >= 4.0}'>
						<img src="img/s3.png" alt="gold" width="50" height="50" />
					</c:when>
					<c:when test='${auctionVO.total_score >= 3.5}'>
						<img src="img/s2.png" alt="silver" width="50" height="50" />
					</c:when>
					<c:when test='${auctionVO.total_score >= 3.0}'>
						<img src="img/s1.png" alt="bronze" width="50" height="50" />
					</c:when>
					<c:otherwise>
						<img src="img/aa.jpg"  width="50" height="50" />
					</c:otherwise>
				</c:choose>
				<p>
					<strong><c:out value="${auctionVO.stu_enroll_num}" /></strong><br>
					<span>나리신뢰지수 <strong><c:out
								value="${auctionVO.total_score}" /></strong> / 5</span>
				</p>
			</div>
			<hr class="style1">
			<div class="conten">
				<h5>
					<c:out value="${auctionVO.comment}" />
				</h5>
			</div>
			<hr class="style2">
		</div>
		<div class="conten">
			<h5>
				<strong>오픈카톡 주소</strong><br>
				<a href="${auctionVO.kakao}"><img src="img/ka.png" width="50px" height="50px"></a>
			</h5>
			<hr class="style2">
		</div>
		<div class="conten">
			<h5>
				<a href="Controller?cmd=declareAction&number=${auctionVO.auction_num}"><strong>신고하기</strong></a>
			</h5>
		</div>
		<div class="down"></div>
	</c:forEach>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

	<script type="text/javascript">
	//scroll top
	$(document).ready(function() {

	  var scrollTop = $(".scrollTop");

	  $(window).scroll(function() {
	    // declare variable
	    var topPos = $(this).scrollTop();

	    // if user scrolls down - show scroll to top button
	    if (topPos > 100) {
	      $(scrollTop).css("opacity", "1");
	       $('.nav').addClass('animate')
	    } else {
	      $(scrollTop).css("opacity", "0");
	      $('.nav').removeClass('animate')
	    }

	  }); // scroll END
	}); // ready() END
	</script>
</body>
</html>