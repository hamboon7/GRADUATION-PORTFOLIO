<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="css/enroll.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script src="js/jquery-3.4.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
	<div class="container">
		<form method="post" action="Controller?cmd=productEnrollAction" enctype="multipart/form-data">
			<div class="form-group">
				<h2 class="heading">중고물품 등록</h2>
				<div class="controls">
					<input type="text" id="email" class="floatLabel" name="name">
					<label for="email">상품명</label>
				</div>

				<h3 class="heading">등록할 상품분류를 선택해주세요.</h3>

				<div class="row">
					<div class="col">
						<div class="box controls">
							<select id="dropdown" name="category1" class="floatLabel">
								<option value="0">1차 상품분류</option>
								<option value="area1">여성의류</option>
								<option value="area2">여성신발</option>
								<option value="area3">여성가방</option>
								<option value="area4">언더웨어</option>
								<option value="area5">지갑/벨트</option>
								<option value="area6">쥬얼리</option>
								<option value="area7">시계</option>
								<option value="area8">잡화/소품</option>
								<option value="area9">스킨케어</option>
								<option value="area10">메이크업</option>
								<option value="area11">선케어</option>
								<option value="area12">향수</option>
								<option value="area13">뷰티소품</option>
								<option value="area14">네일</option>
								<option value="area15">생필품</option>
								<option value="area16">문구류</option>
								<option value="area17">화방용품</option>
								<option value="area18">음반/DVD</option>
								<option value="area19">가전디지털</option>
								<option value="area20">반려동물용품</option>
								<option value="area21">e티켓/공연/여행</option>
							</select>
						</div>
					</div>
					<div class="col">
						<div class="box controls" id="divarea1">
							<select class="2cha 1">
								<option value="">2차 상품분류</option>
								<option value="1101">원피스</option>
								<option value="1102">블라우스</option>
								<option value="1103">상의</option>
								<option value="1104">바지</option>
								<option value="1105">니트/스웨터</option>
								<option value="1106">치마</option>
								<option value="1107">아우터</option>
								<option value="1108">트레이닝</option>
								<option value="1109">기타</option>
							</select> 
							<select class="2cha 2">
								<option value="">2차 상품분류</option>
								<option value="1201">힐</option>
								<option value="1202">로퍼/플랫</option>
								<option value="1203">샌달</option>
								<option value="1204">부츠</option>
								<option value="1205">운동화</option>
								<option value="1206">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea3">
							<select class="2cha 3">
								<option value="">2차 상품분류</option>
								<option value="1301">숄더백</option>
								<option value="1302">크로스백</option>
								<option value="1303">클러치</option>
								<option value="1304">백팩</option>
								<option value="1305">에코백</option>
								<option value="1306">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea4">
							<select class="2cha 4">
								<option value="">2차 상품분류</option>
								<option value="1401">파자마/홈웨어</option>
								<option value="1402">브라</option>
								<option value="1403">팬티</option>
								<option value="1404">속옷세트</option>
								<option value="1405">속바지</option>
								<option value="1406">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea5">
							<select class="2cha 5">
								<option value="">2차 상품분류</option>
								<option value="1501">지갑</option>
								<option value="1502">벨트</option>
								<option value="1503">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea6">
							<select class="2cha 6">
								<option value="">2차 상품분류</option>
								<option value="1601">귀걸이</option>
								<option value="1602">목걸이</option>
								<option value="1603">반지</option>
								<option value="1604">팔찌</option>
								<option value="1605">헤어 액세서리</option>
								<option value="1606">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea7">
							<select class="2cha 7">
								<option value="">2차 상품분류</option>
								<option value="1701">여성/남성시계</option>
								<option value="1702">시계소품</option>
								<option value="1703">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea8">
							<select class="2cha 8">
								<option value="">2차 상품분류</option>
								<option value="1801">스타킹/양말</option>
								<option value="1802">모자</option>
								<option value="1803">양산/우산</option>
								<option value="1804">손수건</option>
								<option value="1805">장갑</option>
								<option value="1806">목도리/스카프</option>
								<option value="1807">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea9">
							<select class="2cha 9">
								<option value="">2차 상품분류</option>
								<option value="2101">스킨/토너</option>
								<option value="2102">로션/에멀젼</option>
								<option value="2103">에센스/세럼</option>
								<option value="2104">앰플</option>
								<option value="2105">크림</option>
								<option value="2106">미스트</option>
								<option value="2107">오일</option>
								<option value="2108">마스크</option>
								<option value="2109">클렌징</option>
								<option value="2110">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea10">
							<select class="2cha 10">
								<option value="">2차 상품분류</option>
								<option value="2201">페이스 메이크업</option>
								<option value="2202">아이 메이크업</option>
								<option value="2203">립 메이크업</option>
								<option value="2204">치크/하이라이터</option>
								<option value="2205">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea11">
							<select class="2cha 11">
								<option value="">2차 상품분류</option>
								<option value="2301">선크림/선블록</option>
								<option value="2302">선밤</option>
								<option value="2303">선파우더/쿠션</option>
								<option value="2304">선 스프레이</option>
								<option value="2305">기타</option>
							</select>
						</div>
						<div class="box col-md-8 " id="divarea12">
							<select class="2cha 12">
								<option value="">2차 상품분류</option>
								<option value="2401">여성/남성향수</option>
								<option value="2402">공용향수</option>
								<option value="2403">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea13">
							<select class="2cha 13">
								<option value="">2차 상품분류</option>
								<option value="2501">페이스 소품</option>
								<option value="2502">클렌징 소품</option>
								<option value="2503">헤어 소품</option>
								<option value="2504">피부관리기</option>
								<option value="2505">용기/거울/기타제품</option>
							</select>
						</div>
						<div class="box controls " id="divarea14">
							<select class="2cha 14">
								<option value="">2차 상품분류</option>
								<option value="2601">네일팁/스티커</option>
								<option value="2602">일반 네일</option>
								<option value="2603">젤 네일</option>
								<option value="2604">큐티클/영양</option>
								<option value="2605">네일케어도구</option>
								<option value="2606">네일아트소품</option>
								<option value="2607">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea15">
							<select class="2cha 15">
								<option value="">2차 상품분류</option>
								<option value="3101">세탁세제</option>
								<option value="3102">청소/주방세제</option>
								<option value="3103">화장지/생리대</option>
								<option value="3104">탈취/방향/살충</option>
								<option value="3105">욕실용품</option>
								<option value="3106">세탁/청소용품</option>
								<option value="3107">수납/정리</option>
								<option value="3108">생활잡화</option>
								<option value="3109">주방수납/잡화</option>
								<option value="3110">건강/의료용품</option>
								<option value="3111">공구</option>
								<option value="3112">생활전기</option>
								<option value="3113">안전/호신용품</option>
								<option value="3114">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea16">
							<select class="2cha 16">
								<option value="">2차 상품분류</option>
								<option value="4101">필기구</option>
								<option value="4102">노트/수첩</option>
								<option value="4103">다이어리/플래너</option>
								<option value="4104">보드/칠판</option>
								<option value="4105">복사용지</option>
								<option value="4106">팬시용품</option>
								<option value="4107">제도용품</option>
								<option value="4108">카드/편지지</option>
								<option value="4109">앨범</option>
								<option value="4110">사무용품</option>
								<option value="4111">화일</option>
								<option value="4112">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea17">
							<select class="2cha 17">
								<option value="">2차 상품분류</option>
								<option value="4201">연필/색연필</option>
								<option value="4202">붓</option>
								<option value="4203">물감</option>
								<option value="4204">캔버스</option>
								<option value="4205">이젤</option>
								<option value="4206">칼라가이드/마카</option>
								<option value="4207">조소용품</option>
								<option value="4208">판화용품</option>
								<option value="4209">페인팅/염색용품</option>
								<option value="4210">미술보조용품</option>
								<option value="4211">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea18">
							<select class="2cha 18">
								<option value="">2차 상품분류</option>
								<option value="4301">음반</option>
								<option value="4302">DVD</option>
								<option value="4303">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea19">
							<select class="2cha 19">
								<option value="">2차 상품분류</option>
								<option value="5101">컴퓨터/액세서리</option>
								<option value="5102">휴대폰/액세서리</option>
								<option value="5103">태블릿PC/액세서리</option>
								<option value="5104">카메라/액세서리</option>
								<option value="5105">계절가전</option>
								<option value="5106">TV/영상가전</option>
								<option value="5107">청소기</option>
								<option value="5108">생활가전</option>
								<option value="5109">미용가전</option>
								<option value="5110">주방가전</option>
								<option value="5111">차량용 디지털</option>
								<option value="5112">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea20">
							<select class="2cha 20">
								<option value="">2차 상품분류</option>
								<option value="6101">사료</option>
								<option value="6102">간식</option>
								<option value="6103">하우스/울타리</option>
								<option value="6104">급식기/급수기</option>
								<option value="6105">미용/목욕</option>
								<option value="6106">배변용품</option>
								<option value="6107">의류/패션</option>
								<option value="6108">장난감/훈련용품</option>
								<option value="6109">이동장/외출용품</option>
								<option value="6110">건강관리</option>
								<option value="6111">기타</option>
							</select>
						</div>
						<div class="box controls " id="divarea21">
							<select class="2cha 21">
								<option value="">2차 상품분류</option>
								<option value="7101">숙박권</option>
								<option value="7102">뮤지컬</option>
								<option value="7103">연극</option>
								<option value="7104">전시/행사</option>
								<option value="7105">콘서트</option>
								<option value="7106">기프티콘</option>
								<option value="7107">기타</option>
							</select>
						</div>
					</div>
				</div>
				<div class="controls">
					<textarea rows="5" cols="30" class="floatLabel" name="comment" maxlength="300"></textarea>
					<label for="comment">상품설명</label>
				</div>
				<h3 class="heading">제품 이미지는 최대 10장까지 업로드 가능합니다.</h3>

				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img1"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img2"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img3"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img4"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img5"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img6"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img7"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img8"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img9"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img10"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="controls">
					<input type="text" class="floatLabel" name="price" placeholder="등록 희망 가격" />
				</div>
				<div class="controls">
					<input type="text" class="floatLabel" name="kakao" placeholder="오픈카톡 주소" />
				</div>
				<h3 class="heading">
					보존상태 훼손여부와 수리필요여부 <br>
				</h3>
				<table class="table table-sm">
					<thead class="thead-dark">
						<tr>
							<th scope="col"></th>
							<th scope="col">상</th>
							<th scope="col">중</th>
							<th scope="col">하</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">훼손</th>
							<td>X</td>
							<td>X</td>
							<td>O</td>
						</tr>
						<tr>
							<th scope="row">수리</th>
							<td>X</td>
							<td>O</td>
							<td>O</td>
						</tr>
					</tbody>
				</table>
				<div class="box controls ">
					<select class="floatLabel" name="pro_condition">
						<option>상품상태</option>
						<option value="0">상</option>
						<option value="1">중</option>
						<option value="2">하</option>
					</select>
					
				</div>
				<div class="controls">
					<select name="deal" class="floatLabel">
						<option>배송방법</option>
						<option>직거래</option>
						<option>택배</option>
					</select>
				</div>
				<button type="submit" class="col-12">등록하기</button>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		(function($){
			function floatLabel(inputType){
				$(inputType).each(function(){
					var $this = $(this);
					// on focus add cladd active to label
					$this.focus(function(){
						$this.next().addClass("active");
					});
					//on blur check field and remove class if needed
					$this.blur(function(){
						if($this.val() === '' || $this.val() === 'blank'){
							$this.next().removeClass();
						}
					});
				});
			}
			// just add a class of "floatLabel to the input field!"
			floatLabel(".floatLabel");
		})(jQuery);
		
		$(document).ready(function() {
			$(".2cha").hide();
			$('#dropdown').change(function() {
				var value = $(this).val();
				/* alert(value);  */
				if (value == "area1") {
					$(".1").show();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".1").attr("name", "category2");
				} else if (value == "area2") {
					$(".1").hide();
					$(".2").show();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".2").attr("name", "category2");
				} else if (value == "area3") {
					$(".1").hide();
					$(".2").hide();
					$(".3").show();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".3").attr("name", "category2");
				} else if (value == "area4") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").show();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".4").attr("name", "category2");
				} else if (value == "area5") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").show();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".5").attr("name", "category2");
				} else if (value == "area6") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").show();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".6").attr("name", "category2");
				} else if (value == "area7") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").show();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".7").attr("name", "category2");
				} else if (value == "area8") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").show();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".8").attr("name", "category2");
				} else if (value == "area9") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").show();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".9").attr("name", "category2");
				} else if (value == "area10") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").show();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".10").attr("name", "category2");
				} else if (value == "area11") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").show();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".11").attr("name", "category2");
				} else if (value == "area12") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").show();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".12").attr("name", "category2");
				} else if (value == "area13") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").show();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".13").attr("name", "category2");
				} else if (value == "area14") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").show();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".14").attr("name", "category2");
				} else if (value == "area15") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").show();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".15").attr("name", "category2");
				} else if (value == "area16") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").show();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".16").attr("name", "category2");
				} else if (value == "area17") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").show();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".17").attr("name", "category2");
				} else if (value == "area18") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").show();
					$(".19").hide();
					$(".20").hide();
					$(".21").hide();
					$(".18").attr("name", "category2");
				} else if (value == "area19") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").show();
					$(".20").hide();
					$(".21").hide();
					$(".19").attr("name", "category2");
				} else if (value == "area20") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").show();
					$(".21").hide();
					$(".20").attr("name", "category2");
				} else if (value == "area21") {
					$(".1").hide();
					$(".2").hide();
					$(".3").hide();
					$(".4").hide();
					$(".5").hide();
					$(".6").hide();
					$(".7").hide();
					$(".8").hide();
					$(".9").hide();
					$(".10").hide();
					$(".11").hide();
					$(".12").hide();
					$(".13").hide();
					$(".14").hide();
					$(".15").hide();
					$(".16").hide();
					$(".17").hide();
					$(".18").hide();
					$(".19").hide();
					$(".20").hide();
					$(".21").show();
					$(".21").attr("name", "category2");
				}
			});
		});
	</script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/zepto/1.0/zepto.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</body>
</html>



