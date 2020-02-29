<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>모도리 중고 거래</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a32c0865ec.js"
	crossorigin="anonymous"></script>

<style type="text/css">
	@import url(https://fonts.googleapis.com/css?family=Exo:400,700,800,600);
	body {
		font-family: "Roboto", sans-serif;
	}
	.row {
		position: absolute;
	    width: 100%;
	    height: 100%;
	    margin-top: 20px;
	    float: left;
	}
	
	#slider, .wrap, .slide img {
	  margin: 0;
	  padding: 0;
	  width: 100%;
	  height: 600px;
	  overflow-x: hidden;
	}
	
	.wrap {
	  position: relative;
	}
	
	.slide {
	  background-size: cover;
	  background-position: center;
	  background-repeat: no-repeat;
	}
	
	.arrow {
	  cursor: pointer;
	  position: absolute;
	  top: 50%;
	  margin-top: -35px;
	  width: 0;
	  height: 0;
	  border-style: solid;
	}
	
	#arrow-left {
	  border-width: 30px 40px 30px 0;
	  border-color: transparent #f2cb05 transparent transparent;
	  left: 0;
	  margin-left: 30px;
	}
	
	#arrow-right {
	  border-width: 30px 0 30px 40px;
	  border-color: transparent transparent transparent #f2cb05;
	  right: 0;
	  margin-right: 30px;
	}
	.col-lg-6 {
		margin-top: 10px;
	} 
	
	p {
		font-size: 18px;
	}
	.account {
	  float: center;
	  display: inline-block;
	  height: 50px;
	  width: 100%;
	  box-sizing: border-box;
	  border: transparent;
	  font-family: 'Raleway', sans-serif;
	  font-size: 14px;
	  font-weight: 500;
	  text-transform: uppercase;
	  letter-spacing: 0.2em;
	  color: #ffffff;
	  background-color: #f2cb05;
	  cursor: pointer;
	  outline: none;
	  margin-bottom: 20px;
	}
	
	.account:hover {
	  background-color: #e9a900;
	}
	.price {
		text-decoration: line-through;
	}
	
	.container {
		margin-top: 20px;
	}
	h2 {
		margin-top: 30px;
	}
	.comment {
		/* padding-right: 10%; */
	}
</style>
</head>
<body>
	<jsp:include page="nav.jsp" />
	
	<div class="container">
		<c:forEach items="${groupDetailData}" var="groupBuyingVO">
		<div class="row">
			<div class="col-lg-6">
				<div class="wrap">
				  <div id="slider">
				  	<input type="hidden" name="num" value="${groupBuyingVO.groupBuying_num}">
				    <div class="slide slide1">
				    	<img src="img/${groupBuyingVO.groupBuying_img}" alt="${groupBuyingVO.groupBuying_img}" height="100" />
				    </div>
				  </div>
				</div>
			</div>
			<!-- /col-sm-6 -->
			<div class="col-lg-6"><hr>
				<h4>
					<c:out value="${groupBuyingVO.product_name}" />
				</h4>
				<h5>
					가격 :
					<fmt:formatNumber value="${groupBuyingVO.price}" pattern="###,###,###" />원
				</h5>
				<hr>
				<p>
					판매자 정보 :
					<c:out value="${groupBuyingVO.student_num}" />
					<c:choose>
						<c:when test='${groupBuyingVO.total_score >= 4.5}'>
							<img src="img/diamond.png" alt="gold" width="25" height="25" />
						</c:when>
						<c:when test='${groupBuyingVO.total_score >= 4.0}'>
							<img src="img/gold.png" alt="gold" width="25" height="25" />
						</c:when>
						<c:when test='${groupBuyingVO.total_score >= 3.5}'>
							<img src="img/silver.png" alt="silver" width="25" height="25" />
						</c:when>
						<c:when test='${groupBuyingVO.total_score >= 3.0}'>
							<img src="img/bronze.png" alt="bronze" width="25" height="25" />
						</c:when>
					</c:choose>
					<c:out value="${groupBuyingVO.total_score}" />
				</p>
				<p class="comment">
					상세 설명 :
					<c:out value="${groupBuyingVO.comment}" />
				</p>
				<p>
					<a class="btn btn-danger" href="Controller?cmd=declareAction&number=${groupBuyingVO.groupBuying_num}">신고</a>
				</p>
				<br>
				<hr>
				<a href="#">
					<button type="button" class="account">쪽지하기</button>
				</a>
				</div>
				<!-- /col-sm-6 -->
			</div>
			<!-- /row -->
		</c:forEach>
	</div>
	<!-- /container -->
	<script type="text/javascript">
		
	</script>
</body>
</html>