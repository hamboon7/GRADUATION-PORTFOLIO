<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">

<title>Insert title here</title>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />

<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:400,900,700,500);

body {
  padding: 0px 0;
  background-color: #f2f2f2;
  margin: 0 auto;
  width: 600px;
}
.form-container {
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.card-wrapper {
  background-color: #f2cb05;
  width: 100%;
  display: flex;

}
.personal-information {
  background-color: #f2cb05;
  color: #fff;
  padding: 1px 0;
  text-align: center;
}
h1 {
  font-size: 1.3em;
  font-family: "Roboto"
}
input {
  margin: 1px 0;
  padding-left: 3%;
  font-size: 14px;
}
input[type="text"]{
  display: block;
  height: 50px;
  width: 97%;
  border: none;
}
input[type="email"]{
  display: block;
  height: 50px;
  width: 97%;
  border: none;
}
input[type="submit"], input[type="button"]{
  display: block;
  height: 60px;
  width: 100%;
  border: none;
  background-color: #f2cb05;
  color: #fff;
  margin-top: 2px;
  curson: pointer;
  font-size: 0.9em;
  text-transform: uppercase;
  font-weight: bold;
  cursor: pointer;
}
input[type="submit"]:hover, input[type="button"]:hover{
  background-color: #e9a900;
  transition: 0.3s ease;
}
#column-left {
  width: 46.8%;
  float: left;
  margin-bottom: 2px;
}
#column-right {
  width: 46.8%;
  float: right;
}

@media only screen and (max-width: 480px){
  body {
    width: 100%;
    margin: 0 auto;
  }
  .form-container {
    margin: 0 2%;
  }
  input {
    font-size: 1em;
  }
  #input-button {
    width: 100%;
  }
  #input-field {
    width: 96.5%;
  }
  h1 {
    font-size: 1.2em;
  }
  input {
    margin: 2px 0;
  }
  input[type="submit"], input[type="button"]{
    height: 50px;
  }
  #column-left {
    width: 96.5%;
    display: block;
    float: none;
  }
  #column-right {
    width: 96.5%;
    display: block;
    float: none;
  }
}
</style>

</head>

<body>
	<c:forEach items="${buyPData}" var="accountVO">
		<div class="form-container">
			<form method="post" action="Controller?cmd=receiptAction&number=${accountVO.num}">
			<div class="personal-information">
				<h1>결제 정보</h1>
			</div>
			<input type="hidden" name="num" value="${accountVO.num}">
			<input id="column-left" type="text" name="stu_num" value="구매자 번호 : ${loginOK}" />
			<input id="column-right" type="text" name="stu_name" value="구매자 이름 : ${accountVO.stu_name}" />
			<input id="input-field" type="text" name="pro_name" value="물품 이름 : ${accountVO.pro_name}" />
			<input id="column-left" type="text" name="price" value="물품 가격 : ${accountVO.price-accountVO.sale}" /> 
			<input id="column-right" type="text" name="deal" value="거래 방식 : ${accountVO.deal}" />
			<div class="card-wrapper"></div>
			<input id="input-field" type="text" name="buyer_bank" value="구매자 출금 정보 : ${accountVO.bank}은행 ${accountVO.account}" /> 
			<input id="input-field" type="text" name="seller_bank" value="판매자 입금 정보 : 신한은행 103-42-422653" /> 
			<input id="input-field" type="text" name="seller_name" value="판매자 예금주 : 모도리" /> 
			<input id="input-button" type="submit" value="입금확인하기" /> 
			</form>
			<input id="input-button" type="button" value="취소하기" onclick="goBack();" />
		</div>

	</c:forEach>
	<c:forEach items="${buyBData}" var="accountVO">
		<div class="form-container">
			<form method="post" action="Controller?cmd=receiptAction&number=${accountVO.num}">
			<div class="personal-information">
				<h1>결제 정보</h1>
			</div>
			<input type="hidden" name="num" value="${accountVO.num}">
			<input id="column-left" type="text" name="stu_num" value="구매자 번호 : ${loginOK}" />
			<input id="column-right" type="text" name="stu_name" value="구매자 이름 : ${accountVO.stu_name}" />
			<input id="input-field" type="text" name="pro_name" value="물품 이름 : ${accountVO.pro_name}" />
			<input id="column-left" type="text" name="price" value="물품 가격 : ${accountVO.price-accountVO.sale}" /> 
			<input id="column-right" type="text" name="deal" value="거래 방식 : ${accountVO.deal}" />
			<div class="card-wrapper"></div>
			<input id="input-field" type="text" name="buyer_bank" value="구매자 출금 정보 : ${accountVO.bank}은행 ${accountVO.account}" /> 
			<input id="input-field" type="text" name="seller_bank" value="판매자 입금 정보 : 국민은행 100-482-878183" /> 
			<input id="input-field" type="text" name="seller_name" value="판매자 예금주 : 한양여자대학교 총학생회" /> 
			<input id="input-button" type="submit" value="입금확인하기" /> 
			</form>
			<input id="input-button" type="button" value="취소하기" onclick="goBack();" />
		</div>
	</c:forEach>
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/121761/card.js"></script>
	<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/121761/jquery.card.js"></script>	
	<script type="text/javascript">
		$('form').card({
		    container: '.card-wrapper',
		    width: 280,
		});
		
		function goBack(){
			window.history.back();
		}
	</script>
</body>
</html>