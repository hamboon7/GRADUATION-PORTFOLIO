<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<style type="text/css">
#invoice-POS {
  box-shadow: 0 0 1in -0.25in rgba(0, 0, 0, 0.5);
  padding: 2mm;
  margin: 0 auto;
  width: 80mm;
  background: #FFF;
}
#invoice-POS ::selection {
  background: #f31544;
  color: #FFF;
}
#invoice-POS ::moz-selection {
  background: #f31544;
  color: #FFF;
}
#invoice-POS h1 {
  font-size: 1.5em;
  color: #222;
}
#invoice-POS h2 {
  font-size: 1em;
}
#invoice-POS h3 {
  font-size: 1.2em;
  font-weight: 300;
  line-height: 2em;
}
#invoice-POS p {
  font-size: .7em;
  color: #666;
  line-height: 1.2em;
}
#invoice-POS #top, #invoice-POS #mid, #invoice-POS #bot {
  /* Targets all id with 'col-' */
  border-bottom: 1px solid #EEE;
}
#invoice-POS #top {
  min-height: 30px;
  text-align: center;
}
#invoice-POS #mid {
  min-height: 80px;
}
#invoice-POS #bot {
  min-height: 50px;
}
#invoice-POS .clientlogo {
  float: left;
  height: 60px;
  width: 60px;
  border-radius: 50px;
}
#invoice-POS .info {
  display: block;
  text-align: center;
}
#invoice-POS .title {
  float: right;
}
#invoice-POS .title p {
  text-align: right;
}
#invoice-POS table {
  width: 100%;
  border-collapse: collapse;
  text-align: center;
}
#invoice-POS .tabletitle {
  font-size: .8em;
  background: #EEE;
}
#invoice-POS .service {
  border-bottom: 1px solid #EEE;
}
#invoice-POS .item {
  width: 24mm;
}
#invoice-POS .itemtext {
  font-size: .8em;
}
#invoice-POS #legalcopy {
  margin-top: 5mm;
  text-align: center;
}
a{
	text-decoration:none;
	color: #000;
}
button {
  outline: 0;
  background: #f2cb05;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
</style>
</head>
<body>

	<div id="invoice-POS">
		<div id="top">
			<div class="logo">
				<img src="img/receipt.png" width="100px" height="100px">
			</div>
			<div class="info">
				<h1>MODORI</h1>
			</div>
			<!--End Info-->
		</div>
		<!--End InvoiceTop-->

		<div id="mid">
			<div class="info">
				<h2>거래명세표</h2>
				<p>Address : Hanyang women's university Smart IT</br> Email : Modori@hywoman.co.kr</br> Phone :
					02-2290-2114</br>
				</p>
			</div>
		</div>
		<!--End Invoice Mid-->

		<div id="bot">
			<c:forEach items="${buyPData}" var="accountVO">
			<div id="table">
				<table>
					<tr class="tabletitle">
						<td class="item"><h2>상품</h2></td>
						<td class="Hours"><h2>할인금액</h2></td>
						<td class="Rate"><h2>금액</h2></td>
					</tr>

					<tr class="service">
						<td class="tableitem"><p class="itemtext"><c:out value="${accountVO.pro_name}" /></p></td>
						<td class="tableitem"><p class="itemtext"><fmt:formatNumber value="${accountVO.sale}" pattern="###,###,###" /></p></td>
						<td class="tableitem"><p class="itemtext"><fmt:formatNumber value="${accountVO.price}" pattern="###,###,###" /></p></td>
					</tr>

					<tr class="tabletitle">
						<td></td>
						<td class="Rate"><h2>Total</h2></td>
						<td class="payment"><h2><fmt:formatNumber value="${accountVO.price - accountVO.sale}" pattern="###,###,###" /></h2></td>
					</tr>
				</table>
			</div>
			</c:forEach>
			<c:forEach items="${buyBData}" var="accountVO">
			<div id="table">
				<table>
					<tr class="tabletitle">
						<td class="item"><h2>상품</h2></td>
						<td class="Hours"><h2>단가</h2></td>
						<td class="Rate"><h2>금액</h2></td>
					</tr>

					<tr class="service">
						<td class="tableitem"><p class="itemtext">Communication</p></td>
						<td class="tableitem"><p class="itemtext"><fmt:formatNumber value="${accountVO.sale}" pattern="###,###,###" /></p></td>
						<td class="tableitem"><p class="itemtext"><fmt:formatNumber value="${accountVO.price}" pattern="###,###,###" /></p></td>
					</tr>

				</table>
			</div>
			</c:forEach>
			<!--End Table-->
			
			<div id="legalcopy">
				<p class="legal">
					<strong>${loginOK}님 구매해주셔서</strong><br>
					<strong>감사합니다!</strong>
				</p>
			</div>
			<div id="table">
				<table>
					<tr class="tabletitle">
						<td class="item">
							<a href="Controller?cmd=buyProductAction" class="d-block text-gray-dark">
								<button>마이페이지 가기</button>
							</a>
						</td>
					</tr>
				</table>
				
		<!--End InvoiceBot-->
	</div>
	<!--End Invoice-->

</body>
</html>