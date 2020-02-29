<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

<script>
	$(document).ready(
					function() {

						var ren1 = $('.rental').val();
						var ret1 = $('.return').val();
						var ren2 = $('.rental2').val();
						var ret2 = $('.return2').val();

						var availableDates1 = [ ret1, ren1 ];
						var availableDates2 = [ ret2, ren2 ];

						for (var z = 0; z < $(".rental").length; z++) {
							e = $('.rental:eq(' + z + ')').val();
							console.log(e);
							d = e.split("-");
							
							day = Number(d[2]);
							month = Number(d[1]);
							year = Number(d[0]);
							
							dd = 0;
							
							if (month == 2) {
								if (((year % 4 == 0 && year % 100 != 0) || year % 400 == 0))
									dd= 29;
								dd= 28;
							} else if (month % 2 == 0) {
								if (month < 8)
									dd= 30;
								dd= 31;
							} else {
								if (month < 8)
									dd= 31;
								dd= 30;
							}

							for (var i = 0; i < 14; i++) {
								if (dd == 29){
									if (day < 30){
										date = year + "-" + month + "-" + day;
										availableDates1.push(date);
										day = day +1;
									}else{
										day = 1;
										month = month + 1;
										date = year + "-" + month + "-" + day;
										availableDates1.push(date);
										day = day +1;
									}
								}
								if (dd == 28) {
									if (day < 29){
										date = year + "-" + month + "-" + day;
										availableDates1.push(date);
										day = day +1;
									}else{
										day = 1;
										month = month + 1;
										date = year + "-" + month + "-" + day;
										availableDates1.push(date);
										day = day +1;
									}
								}
								if (dd == 30) {
									if (day < 31){
										date = year + "-" + month + "-" + day;
										availableDates1.push(date);
										day = day +1;
									}else{
										day = 1;
										month = month + 1;
										date = year + "-" + month + "-" + day;
										availableDates1.push(date);
										day = day +1;
									}
								}
								if (dd == 31) {
									if (day < 32){
										date = year + "-" + month + "-" + day;
										availableDates1.push(date);
										day = day +1;
									}else{
										day = 1;
										month = month + 1;
										date = year + "-" + month + "-" + day;
										availableDates1.push(date);
										day = day +1;
									}
								}
							}
						}

						
						
						for (var t = 0; t < $(".rental2").length; t++) {
							d = $('.rental2:eq(' + t + ')').val();
							console.log(d);
							e = d.split("-");

							day = Number(e[2]);
							month = Number(e[1]);
							year = Number(e[0]);
							
							dd = 0;
							
							if (month == 2) {
								if (((year % 4 == 0 && year % 100 != 0) || year % 400 == 0))
									dd= 29;
								dd= 28;
							} else if (month % 2 == 0) {
								if (month < 8)
									dd= 30;
								dd= 31;
							} else {
								if (month < 8)
									dd= 31;
								dd= 30;
							}

							for (var i = 0; i < 15; i++) {
								if (dd == 29){
									if (day < 30){
										date = year + "-" + month + "-" + day;
										availableDates2.push(date);
										day = day +1;
									}else{
										day = 1;
										month = month + 1;
										date = year + "-" + month + "-" + day;
										availableDates2.push(date);
										day = day +1;
									}
								}
								if (dd == 28) {
									if (day < 29){
										date = year + "-" + month + "-" + day;
										availableDates2.push(date);
										day = day +1;
									}else{
										day = 1;
										month = month + 1;
										date = year + "-" + month + "-" + day;
										availableDates2.push(date);
										day = day +1;
									}
								}
								if (dd == 30) {
									if (day < 31){
										date = year + "-" + month + "-" + day;
										availableDates2.push(date);
										day = day +1;
									}else{
										day = 1;
										month = month + 1;
										date = year + "-" + month + "-" + day;
										availableDates2.push(date);
										day = day +1;
									}
								}
								if (dd == 31) {
									if (day < 32){
										date = year + "-" + month + "-" + day;
										availableDates2.push(date);
										day = day +1;
									}else{
										day = 1;
										month = month + 1;
										date = year + "-" + month + "-" + day;
										availableDates2.push(date);
										day = day +1;
									}
								}
							}
						
						}
						console.log(availableDates1);
						console.log(availableDates2);
						function available(date, current) {
							
							function getRecentDate(){
							    var dt = new Date();
							 
							    var recentYear = dt.getFullYear();
							    var recentMonth = dt.getMonth() + 1;
							    var recentDay = dt.getDate();
							 
							    if(recentMonth < 10) recentMonth = "0" + recentMonth;
							    if(recentDay < 10) recentDay = "0" + recentDay;
							 
							    return recentYear + "-" + recentMonth + "-" + recentDay;
							}
							
							dmy = date.getFullYear() + "-"
							+ (date.getMonth() + 1) + "-"
							+ date.getDate();
							
							
							var ret1 = $('.return:last').val();
							console.log(ret1);
							
					        var startDateArr = ret1.split('-');
					        
					        var endDate = getRecentDate();
					        var endDateArr = endDate.split('-');
					                 
					        var startDateCompare = new Date(startDateArr[0], parseInt(startDateArr[1])-1, startDateArr[2]);
					        var endDateCompare = new Date(endDateArr[0], parseInt(endDateArr[1])-1, endDateArr[2]);
							

							if ($.inArray(dmy, availableDates1) > -1) {
								if (startDateCompare < endDateCompare){
									return [ true, "h3", "연체" ];
								}else {
									return [ true, "h1", "대여중" ];
								}
							} else if ($.inArray(dmy, availableDates2) > -1) {
								return [ true, "h2", "예약중" ];
							}

							else {
								return [ true, "", "가능날짜" ];
							}
						}

						$('#demo')
								.datepicker(
										{	language: "ko",
										    todayHighlight: true,
											beforeShowDay : available,
											onSelect : function(dateText, inst) {
												
											}

										});

					});
</script>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="https://kit.fontawesome.com/a32c0865ec.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />

<style type="text/css">
.h1 {
	background-color: #29f274 !important;
	color: #ffffff !important;
}

.h2 {
	background-color: #8ac9fb !important;
	color: #ffffff !important;
}

.h3 {
	background-color: red !important;
	color: #ffffff !important;
}
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
	margin-bottom: 10px;
	margin-top: 20px;
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
	color: #000;
	font-size: 17px;
	cursor: pointer;
}

.sale {
	text-decoration: line-through;
}

* /* placeholder color */
    input:-ms-input-placeholder {
	color: #000;
}

input::-webkit-input-placeholder {
	color: #000;
}

input::-moz-placeholder {
	color: #000;
}

input::-moz-placeholder {
	color: #000;
}

.wrapper {
	position: relative;
	width: 100%;
	height: 45px;
	margin: 10px;
}

.ion-calendar {
	position: absolute;
	right: 20px;
	top: 14px;
}
/* input */
#datepicker {
	border: 1px solid #c6e2f7;
	border-radius: 5px;
	width: 100%;
	height: 100%;
	font-size: 16px;
	text-align: center;
	cursor: pointer;
}

#datepicker:hover {
	background-color: #eaf7ff;
}

#datepicker:focus {
	outline: none;
}
/* calendar table */
.ui-datepicker {
	display: blcok !important;
	background-color: #fff;
	border-radius: 5px;
	margin-top: 10px;
	margin-left: 42.5px;
	margin-right: 42.5px;
	padding: 20px;
	width: 360px;
}

#datepicker:focus>.ui-datepicker {
	display: block;
}

.ui-datepicker-prev, .ui-datepicker-next {
	cursor: pointer;
}

.ui-datepicker-next {
	float: right;
}

.ui-state-disabled {
	cursor: auto;
	color: hsla(0, 0%, 80%, 1);
}

.ui-datepicker-title {
	text-align: center;
	padding: 10px;
	font-weight: 100;
	font-size: 20px;
}

.ui-datepicker-calendar {
	width: 100%;
}
/* day of week cell */
.ui-datepicker-calendar>thead>tr>th {
	padding: 5px;
	font-size: 20px;
	font-weight: 400;
}
/* day cell */
.ui-datepicker-calendar>tbody>tr>td {
	border-radius: 100%;
	width: 44px;
	height: 44px;
	cursor: pointer;
	padding: 5px;
	font-weight: 100;
	text-align: center;
}

.ui-datepicker-calendar>tbody>tr>td:hover {
	background-color: #c6e2f7;
}

.ui-datepicker-calendar>tbody>tr>td>a {
	color: #000;
	font-size: 18px;
	font-weight: 400;
	text-decoration: none;
}
/* past days */
.ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover {
	cursor: auto;
	background-color: #fff;
}
/* media */
@media ( max-width : 445px) {
	.wrapper {
		width: 100%;
	}
	.ui-datepicker {
		margin-right: 0;
		margin-left: 0;
		padding: 10px;
		width: calc(100vw - 20px);
		margin: 10px auto;
	}
	.ui-datepicker-calendar>tbody>tr>td {
		
	}
}
/* custom styles */
label {
	display: block;
}

input {
	border: 1px solid #c4c4c4;
	border-radius: 5px;
	background-color: #fff;
	padding: 3px 5px;
	box-shadow: inset 0 3px 6px rgba(0, 0, 0, 0.1);
	width: 190px;
}

.no {
	z-index: 999;
	background: red;
	color: #fff;
}

.noo {
	z-index: 999;
	background: red;
	color: #fff;
}
</style>
</head>
<body>

	<!--  nav ------------------------------------------------------------------------------------------------->
	<nav class="nav">
		<ul>
			<li class="dropdown"><a href="Controller?cmd=bazaarAction"
				class="dropped"><i class="fas fa-arrow-left fa-lg"></i> </a></li>
		</ul>
	</nav>

	<!--  body ------------------------------------------------------------------------------------------------->
	<c:forEach items="${bookData}" var="bookVO">
		<input type="hidden" name="num" value="${bookVO.book_num}">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="img/${bookVO.book_img}" class="d-block w-100"
						alt="{bookVO.img1}" height="500" width="500">
				</div>
			</div>
		</div>

		<div class="conten">
			<h6>
				제품 상태 <strong> <c:choose>
						<c:when test="${bookVO.book_enroll_condition == 0}">
							반납
						</c:when>
						<c:when test="${bookVO.book_enroll_condition == 1}">											
							대여중						
						</c:when>
						<c:when test="${bookVO.book_enroll_condition == 2}">
							예약중
						</c:when>
						<c:when test="${bookVO.book_enroll_condition == 4}">
							연체
						</c:when>
					</c:choose>
				</strong>


			</h6>
			<h4>
				<strong><c:out value="${bookVO.book_name}" /></strong>
			</h4>
			<span> <c:choose>
					<c:when test='${bookVO.category == "1"}'>
						전공책
						</c:when>
					<c:when test='${bookVO.category == "2"}'>
						자격증책
						</c:when>
				</c:choose>
			</span>
		</div>
		<hr class="style2">

		<div class="conten">

			<c:choose>

				<c:when test="${bookVO.book_enroll_condition == 0}">
					<form method="post"
						action="Controller?cmd=rentalAction&number=${bookVO.book_num}"
						class="rental">
						<a href="Controller?cmd=rentalAction&number=${bookVO.book_num}">
							<button type="submit">대여하기</button>
						</a>
					</form>
				</c:when>

				<c:when test="${bookVO.book_enroll_condition == 1}">
					<h5>
						<strong>예약 날짜 선택</strong>
					</h5>
					<form method="post"
						action="Controller?cmd=bookingAction&number=${bookVO.book_num}"
						class="rental">

						<div class="wrapper">
							<input type="date" id="datepicker" name="rental_date"> <a
								href="Controller?cmd=bookingAction&number=${bookVO.book_num}">
								<button type="submit">예약하기</button>
							</a>
						</div>
					</form>
				</c:when>

				<c:when test="${bookVO.book_enroll_condition == 2}">
					<h5>
						<strong>예약 날짜 선택</strong>
					</h5>
					<form method="post"
						action="Controller?cmd=bookingAction&number=${bookVO.book_num}"
						class="rental">
						<div class="wrapper">
							<input type="date" id="datepicker" name="rental_date"> <a
								href="Controller?cmd=bookingAction&number=${bookVO.book_num}">
								<button type="submit">예약하기</button>
							</a>
						</div>
					</form>
				</c:when>

				<c:when test="${bookVO.book_enroll_condition == 3}">
					<h4>훼손으로 대여/예약이 불가한 도서입니다.</h4>
				</c:when>

				<c:when test="${bookVO.book_enroll_condition == 4}">
					<button class="no">연체중 대여/예약 불가</button>
				</c:when>

			</c:choose>

		</div>

		<c:choose>
		
			<c:when test="${bookVO.book_enroll_condition == 0}">
			</c:when>
			
			<c:when test="${bookVO.book_enroll_condition == 1}">
				<div class="conten">

					<h5>
						<strong>예약 실황</strong>
					</h5>
					<span>대여 - 초록 | 예약 - 하늘 | 연체 - 빨강</span>

				</div>
				<div id="demo"></div>

			</c:when>
			
			<c:when test="${bookVO.book_enroll_condition == 2}">
				<div class="conten">

					<h5>
						<strong>예약 실황</strong>
					</h5>
					<span>대여 - 초록 | 예약 - 하늘 | 연체 - 빨강</span>

				</div>
				<div id="demo"></div>
			</c:when>

			<c:when test="${bookVO.book_enroll_condition == 4}">
				<div class="conten">

					<h5>
						<strong>예약 실황</strong>
					</h5>
					<span>대여 - 초록 | 예약 - 하늘 | 연체 - 빨강 </span>

				</div>
				<div id="demo"></div>
			</c:when>
		</c:choose>

		<div class="conten">

			<h5>

				<a href="${bookVO.kakao}"><img src="img/ka.png" width="50px"
					height="50px"></a>
			</h5>
		</div>
		<div class="down"></div>


	</c:forEach>

	<c:forEach items="${rentalBookData}" var="rentalBookVO">
	
		<input type="hidden" name="num"
			value="${rentalBookVO.reservation_num}">

		<c:choose>
		
			<c:when test="${rentalBookVO.book_condition == 0}">
			
				<input type="hidden" class="rental"
					value="<fmt:formatDate value="${rentalBookVO.rental_date}" pattern="yyyy-M-d" />" />


				<input type="hidden" class="return"
					value="<fmt:formatDate value="${rentalBookVO.return_date}" pattern="yyyy-M-d" />" />
			</c:when>

			<c:when test="${rentalBookVO.book_condition == 1}">

					<input type="hidden" class="rental"
						value="<fmt:formatDate value="${rentalBookVO.rental_date}" pattern="yyyy-M-d" />" />


					<input type="hidden" class="return"
						value="<fmt:formatDate value="${rentalBookVO.return_date}" pattern="yyyy-M-d" />" />
				
			</c:when>

			<c:when test="${rentalBookVO.book_condition == 2}">

				<input type="hidden" class="rental2"
					value="<fmt:formatDate value="${rentalBookVO.rental_date}" pattern="yyyy-M-d" />" />


				<input type="hidden" class="return2"
					value="<fmt:formatDate value="${rentalBookVO.return_date}" pattern="yyyy-M-d" />" />

			</c:when>
			
			<c:otherwise>

				<input type="hidden" class="rental"
					value="<fmt:formatDate value="${rentalBookVO.rental_date}" pattern="yyyy-M-d" />" />


				<input type="hidden" class="return"
					value="<fmt:formatDate value="${rentalBookVO.return_date}" pattern="yyyy-M-d" />" />

			</c:otherwise>
			
		</c:choose>
		
	</c:forEach>
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