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
<script type="text/javascript">
	function CheckForm() {
		//[1]아이디 텍스트 박스에 접근해서 id 변수로 저장하는데, 입력한 id값을 저장
		var id = document.join.id;
		//만약 id의 값이 아무것도 입력되지 않았다면?
		if (id.value == "") {
			//아이디를 입력하시오! 경고메세지 띄어주기
			window.alert("할인금액을 입력하시오.");
			//아이디 폼에 커서깜빠거리는 포커스 주기
			document.join.id.focus();
			return false; //현재 submit이벤트를 중지하는 개념
		} else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}
</script>
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
	color: #000
	font-size: 17px;
	cursor: pointer;
}

.sale {
	text-decoration: line-through;
}
[data-tooltip] {
  position: relative;
  z-index: 2;
  cursor: pointer;
}

/* Hide the tooltip content by default */


/* Position tooltip above the element */
[data-tooltip]:before {
  position: absolute;
  bottom: 150%;
  left: 160px;
  margin-bottom: 5px;
  margin-left: -80px;
  padding: 7px;
  width: 160px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  background-color: #000;
  background-color: hsla(0, 0%, 20%, 0.9);
  color: #fff;
  content: attr(data-tooltip);
  text-align: center;
  font-size: 14px;
  line-height: 1.2;
}

/* Triangle hack to make tooltip look like a speech bubble */
[data-tooltip]:after {
  position: absolute;
  bottom: 150%;
  left: 160px;
  margin-left: -5px;
  width: 0;
  border-top: 5px solid #000;
  border-top: 5px solid hsla(0, 0%, 20%, 0.9);
  border-right: 5px solid transparent;
  border-left: 5px solid transparent;
  content: " ";
  font-size: 0;
  line-height: 0;
}

#input-submit {
border: 0;
    outline: 0;
    padding: 0.2em;
    -moz-border-radius: 8px;
    /* -webkit-border-radius: 8px; */
    /* border-radius: 8px; */
    /* display: block; */
    width: 130px;
    font-family: "Merriweather", sans-serif;
    -moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
    resize: none;
    color: #000;
    background: #f2cb05;
    cursor: pointer;
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
	<c:forEach items="${myPageEnrollProductData}" var="enrollPurchaseVO">
		<input type="hidden" name="num" value="${enrollPurchaseVO.num}">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>			
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>									
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>					
						<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="9"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="img/${enrollPurchaseVO.img1}" class="d-block w-100"
						alt="{enrollPurchaseVO.img1}" height="500" width="500">
				</div>
				<div class="carousel-item">
					<c:choose>
						<c:when test='${enrollPurchaseVO.img2 == ""}'>
							<img src="img/productImage.png" alt="productImage" height="500"
								width="360" />
						</c:when>
						<c:otherwise>
							<img src="img/${enrollPurchaseVO.img2}" alt="${enrollPurchaseVO.img2}"
								height="500" width="500" />
						</c:otherwise>
					</c:choose>
				</div>
				
				<div class="carousel-item">
					<c:choose>
						<c:when test='${enrollPurchaseVO.img3 == ""}'>
							<img src="img/productImage.png" alt="productImage" height="500"
								width="360" />
						</c:when>
						<c:otherwise>
							<img src="img/${enrollPurchaseVO.img3}" alt="${enrollPurchaseVO.img3}"
								height="500" width="500" />
						</c:otherwise>
					</c:choose>
				</div>
				
				 <div class="carousel-item">
					<c:choose>
						<c:when test='${enrollPurchaseVO.img4 == ""}'>
							<img src="img/productImage.png" alt="productImage" height="500"
								width="360" />
						</c:when>
						<c:otherwise>
							<img src="img/${enrollPurchaseVO.img4}" alt="${enrollPurchaseVO.img4}"
								height="500" width="500" />
						</c:otherwise>
					</c:choose>
				</div>
				
				<div class="carousel-item">
					<c:choose>
						<c:when test='${enrollPurchaseVO.img5 == ""}'>
							<img src="img/productImage.png" alt="productImage" height="500"
								width="360" />
						</c:when>
						<c:otherwise>
							<img src="img/${enrollPurchaseVO.img5}" alt="${enrollPurchaseVO.img5}"
								height="500" width="500" />
						</c:otherwise>
					</c:choose>
				</div>
				
				
				<div class="carousel-item">
					<c:choose>
						<c:when test='${enrollPurchaseVO.img6 == ""}'>
						<img src="img/productImage.png" alt="productImage" height="500"
								width="360" />
						</c:when>
						<c:otherwise>
							<img src="img/${enrollPurchaseVO.img6}" alt="${enrollPurchaseVO.img6}"
								height="500" width="500" />
						</c:otherwise>
					</c:choose>
				</div>
				<div class="carousel-item">
					<c:choose>
						<c:when test='${enrollPurchaseVO.img7 == ""}'>
						<img src="img/productImage.png" alt="productImage" height="500"
								width="360" />
						</c:when>
						<c:otherwise>
							<img src="img/${enrollPurchaseVO.img7}" alt="${enrollPurchaseVO.img7}"
								height="500" width="500" />
						</c:otherwise>
					</c:choose>
				</div>
				<div class="carousel-item">
					<c:choose>
						<c:when test='${enrollPurchaseVO.img8 == ""}'>
						<img src="img/productImage.png" alt="productImage" height="500"
								width="360" />
						</c:when>
						<c:otherwise>
							<img src="img/${enrollPurchaseVO.img8}" alt="${enrollPurchaseVO.img8}"
								height="500" width="500" />
						</c:otherwise>
					</c:choose>
				</div>
				<div class="carousel-item">
					<c:choose>
						<c:when test='${enrollPurchaseVO.img9 == ""}'>
						<img src="img/productImage.png" alt="productImage" height="500"
								width="360" />
						</c:when>
						<c:otherwise>
							<img src="img/${enrollPurchaseVO.img9}" alt="${enrollPurchaseVO.img9}"
								height="500" width="500" />
						</c:otherwise>
					</c:choose>
				</div>
				<div class="carousel-item">
					<c:choose>
						<c:when test='${enrollPurchaseVO.img10 == ""}'>
						<img src="img/productImage.png" alt="productImage" height="500"
								width="360" />
						</c:when>
						<c:otherwise>
							<img src="img/${enrollPurchaseVO.img10}" alt="${enrollPurchaseVO.img10}"
								height="500" width="500" />
						</c:otherwise>
					</c:choose>
				</div>
				
				
			</div>
		</div>

		<div id="friends">
			<div class="friend">
				<c:choose>
					<c:when test='${enrollPurchaseVO.total_score >= 4.5}'>
						<img src="img/s4.png" alt="gold" width="50" height="50" />
					</c:when>
					<c:when test='${enrollPurchaseVO.total_score >= 4.0}'>
						<img src="img/s3.png" alt="gold" width="50" height="50" />
					</c:when>
					<c:when test='${enrollPurchaseVO.total_score >= 3.5}'>
						<img src="img/s2.png" alt="silver" width="50" height="50" />
					</c:when>
					<c:when test='${enrollPurchaseVO.total_score >= 3.0}'>
						<img src="img/s1.png" alt="bronze" width="50" height="50" />
					</c:when>
					<c:otherwise>
						<img src="img/aa.jpg"  width="50" height="50" />
					</c:otherwise>
				</c:choose>
				<p>
					<strong><c:out value="${enrollPurchaseVO.stu_seller_num}" /></strong><br>
					<span>나리신뢰지수 <strong><c:out
								value="${enrollPurchaseVO.total_score}" /></strong> / 5</span>
				</p>
			</div>
			<hr class="style1">

			<div class="conten">
				<h6>
					상품상태 <strong><c:out value="${enrollPurchaseVO.pro_condition}" /></strong>
				</h6>
				<h4>
					<strong><c:out value="${enrollPurchaseVO.name}" /></strong>
				</h4>
				<c:choose>
					<c:when test="${enrollPurchaseVO.sale == 0}">
						<h5 class="lead">
							<fmt:formatNumber value="${enrollPurchaseVO.price}"
								pattern="###,###,###" />
							원
						</h5>
					</c:when>
					<c:otherwise>
						<h5 class="lead">
							<strong class="sale"><fmt:formatNumber
									value="${enrollPurchaseVO.price}" pattern="###,###,###" /></strong>
							<fmt:formatNumber value="${enrollPurchaseVO.price-enrollPurchaseVO.sale}"
								pattern="###,###,###" />
							원
						</h5>
					</c:otherwise>
				</c:choose>
				<span><c:choose>
						<c:when
							test='${(enrollPurchaseVO.category >= 1101)  && (enrollPurchaseVO.category <= 1109)}'>
					여성의류
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 1201)  && (enrollPurchaseVO.category <= 1206)}'>
					여성신발
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 1301)  && (enrollPurchaseVO.category <= 1306)}'>
					여성가방
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 1401)  && (enrollPurchaseVO.category <= 1406)}'>
					언더웨어
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 1501)  && (enrollPurchaseVO.category <= 1503)}'>
					지갑/벨트
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 1601)  && (enrollPurchaseVO.category <= 1606)}'>
					쥬얼리
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 1701)  && (enrollPurchaseVO.category <= 1703)}'>
					시계
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 1801)  && (enrollPurchaseVO.category <= 1807)}'>
					잡화/소품
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 2101)  && (enrollPurchaseVO.category <= 2110)}'>
					스킨케어
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 2201)  && (enrollPurchaseVO.category <= 2205)}'>
					메이크업
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 2301)  && (enrollPurchaseVO.category <= 2305)}'>
					선케어
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 2401)  && (enrollPurchaseVO.category <= 2403)}'>
					향수
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 2501)  && (enrollPurchaseVO.category <= 2505)}'>
					뷰티소품
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 2601)  && (enrollPurchaseVO.category <= 2607)}'>
					네일
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 3101)  && (enrollPurchaseVO.category <= 3114)}'>
					생필품
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 4101)  && (enrollPurchaseVO.category <= 4112)}'>
					문구류
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 4201)  && (enrollPurchaseVO.category <= 4211)}'>
					화방용품
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 4301)  && (enrollPurchaseVO.category <= 4313)}'>
					음반/DVD
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 5101)  && (enrollPurchaseVO.category <= 5112)}'>
					가전디지털
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 6101)  && (enrollPurchaseVO.category <= 6111)}'>
					반려동물용품
					</c:when>
						<c:when
							test='${(enrollPurchaseVO.category >= 7101)  && (enrollPurchaseVO.category <= 7107)}'>
					e티켓/공연/여행
					</c:when>
					</c:choose> |</span> <span><c:choose>
						<c:when test='${enrollPurchaseVO.category == "1101"}'>
					원피스
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1102"}'>
					블라우스
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1103"}'>
					상의
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1104"}'>
					바지
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1105"}'>
					니트/스웨터
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1106"}'>
					치마
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1107"}'>
					아우터
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1108"}'>
					트레이닝
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1109"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1201"}'>
					힐
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1202"}'>
					로퍼/플랫
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1203"}'>
					샌달
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1204"}'>
					부츠
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1205"}'>
					운동화
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1206"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1301"}'>
					숄더백
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1302"}'>
					크로스백
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1303"}'>
					클러치
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1304"}'>
					백팩
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1305"}'>
					에코백
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1306"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1401"}'>
					파자마/홈웨어
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1402"}'>
					브라
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1403"}'>
					팬티
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1404"}'>
					속옷세트
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1405"}'>
					속바지
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1406"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1501"}'>
					지갑
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1502"}'>
					벨트
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1503"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1601"}'>
					귀걸이
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1602"}'>
					목걸이
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1603"}'>
					반지
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1604"}'>
					팔찌
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1605"}'>
					헤어 액세서리
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1606"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1701"}'>
					여성/남성시계
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1702"}'>
					시계소품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1703"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1801"}'>
					스타킹/양말
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1802"}'>
					모자
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1803"}'>
					양산/우산
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1804"}'>
					손수건
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1805"}'>
					장갑
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1806"}'>
					목도리/스카프
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "1807"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2101"}'>
					스킨/토너
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2102"}'>
					로션/에멀젼
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2103"}'>
					에센스/세럼
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2104"}'>
					앰플
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2105"}'>
					크림
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2106"}'>
					미스트
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2107"}'>
					오일
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2108"}'>
					마스크
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2109"}'>
					클렌징
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2110"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2201"}'>
					페이스 메이크업
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2202"}'>
					아이 메이크업
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2203"}'>
					립 메이크업
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2204"}'>
					치크/하이라이터
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2205"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2301"}'>
					선크림/선블록
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2302"}'>
					선밤
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2303"}'>
					선파우터/쿠션
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2304"}'>
					선 스프레이
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2305"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2401"}'>
					여성/남성향수
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2402"}'>
					공용향수
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2403"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2501"}'>
					페이스 소품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2502"}'>
					클렌징 소품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2503"}'>
					헤어 소품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2504"}'>
					피부관리기
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2505"}'>
					용기/거울/기타제품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2601"}'>
					네일팁/스티커
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2602"}'>
					일반 네일
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2603"}'>
					젤 네일
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2604"}'>
					큐티클/영양
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2605"}'>
					네일케어도구
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2606"}'>
					네일아트소품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "2607"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3101"}'>
					세탁세제
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3102"}'>
					청소/주방세제
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3103"}'>
					화장지/생리대
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3104"}'>
					탈취/방향/살충
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3105"}'>
					욕실용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3106"}'>
					세탁/청소용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3107"}'>
					수납/정리
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3108"}'>
					생활잡화
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3109"}'>
					주방수납/잡화
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3110"}'>
					건강/의료용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3111"}'>
					공구
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3112"}'>
					생활전기
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3113"}'>
					안전/호신용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "3114"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4101"}'>
					필기구
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4102"}'>
					노트/수첩
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4103"}'>
					다이어리/플래너
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4104"}'>
					보드/칠판
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4105"}'>
					복사용지
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4106"}'>
					팬시용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4107"}'>
					제도용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4108"}'>
					카드/편지지
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4109"}'>
					앨범
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4110"}'>
					사무용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4111"}'>
					화일
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4112"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4201"}'>
					연필/색연필
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4202"}'>
					붓
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4203"}'>
					물감
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4204"}'>
					캔버스
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4205"}'>
					이젤
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4206"}'>
					칼라가이드/마카
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4207"}'>
					조소용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4208"}'>
					판화용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4209"}'>
					페인팅/염색용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4210"}'>
					미술보조용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4211"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4301"}'>
					음반
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4302"}'>
					DVD
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "4303"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5101"}'>
					컴퓨터/액세서리
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5102"}'>
					휴대폰/액세서리
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5103"}'>
					태블PC/액세서리
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5104"}'>
					카메라/액세서리
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5105"}'>
					계절가전
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5106"}'>
					TV/영상가전
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5107"}'>
					청소기
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5108"}'>
					생활가전
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5109"}'>
					미용가전
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5110"}'>
					주방가전
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5111"}'>
					차량용 디지털
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "5112"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6101"}'>
					사료
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6102"}'>
					간식
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6103"}'>
					하우스/울타리
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6104"}'>
					급식기/급수기
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6105"}'>
					미용/목욕
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6106"}'>
					배변용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6107"}'>
					의류/패션
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6108"}'>
					장난감/훈련용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6109"}'>
					이동장/외출용품
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6110"}'>
					건강관리
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "6111"}'>
					기타
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "7101"}'>
					숙박권
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "7102"}'>
					뮤지컬
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "7103"}'>
					연극
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "7104"}'>
					전시/행사
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "7105"}'>
					콘서트
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "7106"}'>
					기프티콘
					</c:when>
						<c:when test='${enrollPurchaseVO.category == "7107"}'>
					기타
					</c:when>
					</c:choose></span>
				<h5>
					<c:out value="${enrollPurchaseVO.comment}" />
				</h5>
			</div>
			<hr class="style2">
		</div>
		<div class="conten">
			<h5>
				<strong>할인 가격</strong>
			</h5>
			<p>
						<form id="join" name="join" onsubmit="return validate();" method="post"
						action="Controller?cmd=myPageSaleAction&number=${enrollPurchaseVO.num}">
									<input name="sale" id="id" type="text" />
									<input id ="input-submit" type="button" value="확인" class="button2" onclick="CheckForm();">
									</form>

			</p>
			<hr class="style2">
		</div>
		<div class="conten">
			<h5>
				<strong>거래 방식</strong>
			</h5>
			<p>
				<c:out value="${enrollPurchaseVO.deal}"/>
			</p>
			<hr class="style2">
		</div>
		<div class="conten">
			<h5>
				<a href="${enrollPurchaseVO.kakao}"><img src="img/ka.png" width="50px" height="50px"></a>
			</h5>
			<hr class="style2">
		</div>
		<div class="conten">
			<h5>
				<a href="Controller?cmd=myPageDeleteAction&number=${enrollPurchaseVO.num}" 
								onclick="return confirm('정말로 삭제하시겠습니까?')"><strong>삭제하기</strong></a>
			</h5>
		</div>
		<div class="bottom">
			<c:choose>
				<c:when test='${enrollPurchaseVO.seller_condition == "입금완료"}'>
					<button>거래완료 되었습니다!</button>
				</c:when>
				<c:otherwise>
					<nav>
						<ul>
						<li class="dropdown"><a href="Controller?cmd=myPageSellerMoneyAction&number=${enrollPurchaseVO.num}">
								<button class="tool" data-tooltip="거래가 완료되었다면 눌러주세요!"></button>
								<button>확인</button>
							</a></li>
						</ul>
					</nav>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="down"></div>
	</c:forEach>
	<c:forEach items="${myPageEnrollAuctionData}" var="enrollPurchaseVO">
		<input type="hidden" name="num" value="${enrollPurchaseVO.auction_num}">
		<div id="friends">
			<div class="friend">
				<c:choose>
					<c:when test='${enrollPurchaseVO.total_score >= 4.5}'>
						<img src="img/s4.png" alt="gold" width="50" height="50" />
					</c:when>
					<c:when test='${enrollPurchaseVO.total_score >= 4.0}'>
						<img src="img/s3.png" alt="gold" width="50" height="50" />
					</c:when>
					<c:when test='${enrollPurchaseVO.total_score >= 3.5}'>
						<img src="img/s2.png" alt="silver" width="50" height="50" />
					</c:when>
					<c:when test='${enrollPurchaseVO.total_score >= 3.0}'>
						<img src="img/s1.png" alt="bronze" width="50" height="50" />
					</c:when>
					<c:otherwise>
						<img src="img/aa.jpg"  width="50" height="50" />
					</c:otherwise>
				</c:choose>
				<p>
					<strong><c:out value="${enrollPurchaseVO.stu_enroll_num}" /></strong><br>
					<span>나리신뢰지수 <strong><c:out
								value="${enrollPurchaseVO.total_score}" /></strong> / 5</span>
				</p>
			</div>
			<hr class="style1">
			<div class="conten">
			<h5>
				<c:out value="${enrollPurchaseVO.comment}" />
			</h5>
			<hr class="style2">
		</div>
		</div>
		<div class="conten">
			<h5>
				
				<a href="${enrollPurchaseVO.kakao}"><img src="img/ka.png" width="50px" height="50px"></a>
			</h5>
			<hr class="style2">
		</div>
		<div class="conten">
			<h5>
				<a href="Controller?cmd=myPageDeleteAction&number=${enrollPurchaseVO.auction_num}" 
								onclick="return confirm('정말로 삭제하시겠습니까?')"><strong>삭제하기</strong></a>
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