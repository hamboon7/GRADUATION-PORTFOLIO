<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a32c0865ec.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">

<style>
/*--------------------body--------------------------------------------------------*/
body {
	margin-top: 60px;
	overflow-y: hidden;
}

.page {
	min-height: calc(100vh - 56px);
	max-height: calc(100vh - 56px);
	width: 100%;
	left: 0;
	will-change: transform;
	-webkit-overflow-scrolling: touch;
	overflow-y: scroll;
}

.main {
	display: flex;
	align-items: flex-start;
	flex-wrap: wrap;
	justify-content: center;
	transition: -webkit-transform .3s;
	transition: transform .3s;
	transition: transform .3s, -webkit-transform .3s;
	margin-top
}

.main.disabled {
	-webkit-transform: translateX(-100%);
	transform: translateX(-100%);
}

.cardee {
	flex: auto;
	align-self: flex-start;
	height: 0px;
	width: 200px;
	min-width: 175px;
	max-width: 225px;
	margin: 6px;
	position: relative;
}

.pname {
	content: '';
	background: #FFF;
	height: 50px;
	width: 100%;
	padding: 5px;
	position: absolute;
	bottom: 0;
	left: 0;
	text-align: center;
	font-size: 10px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.badg {
	font-size: 55%;
	font-weight: 700;
	padding: 1px 6px 2px 5px;
	color: black;
	position: relative;
	top: -1px;
	text-shadow: none !important;
	white-space: nowrap;
	letter-spacing: 0;
	position: absolute;
	z-index: 1;
}

.badge-ing {
	background: #ffdd40;
}

.badge-com {
	background: #808080;
	color: #fff;
}

.cardee img {
	width: 100%;
	height: 170px;
}

.ripple {
	overflow: hidden;
	box-shadow: 0px 1px 2px 1px #cccccca8;
	position: relative;
	-webkit-transform: translateZ(0);
	transform: translateZ(0);
}

.ripple .rippling {
	position: absolute;
	border-radius: 50%;
	background-color: #000;
	pointer-events: none;
	padding: 0;
	margin: 0;
	opacity: .2;
	-webkit-transform: translate3d(-50%, -50%, 0);
	transform: translate3d(-50%, -50%, 0);
	will-change: width, height;
}

@media ( max-width : 756px) {
	.cardee {
		width: 25vw;
		min-width: 100px;
		max-width: 28vw;
	}
}

@media ( max-width : 480px) {
	.cardee {
		width: 35vw;
		min-width: 80px;
		max-width: 45vw;
	}
}

.bott {
	margin-bottom: 500px;
}

/*탭----------------------------------------------------------------------------*/
.tabs-buttons {
	height: auto;
	box-shadow: inset 0 -2px #e6e6e6;
}

.tabs-buttons .swiper-wrapper {
	display: flex;
	justify-content: space-between;
	color: darkgray;
    margin-top: 10px
}

.tabs-buttons .swiper-slide {
	width: auto;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	padding: 0.2rem 2rem;
	cursor: pointer;
	border-bottom: 2px solid transparent;
}

.tabs-buttons .active-tab {
	border-bottom: 6px solid;
	border-bottom-color: #f2cb05;
	color: black;
    font-weight: lighter;
}
/*---------------------------------------------------책등록*/
.float {
	position: fixed;
	width: 60px;
	height: 60px;
	bottom: 90px;
	right: 40px;
	background-color: #f2cb05;
	color: #FFF;
	border-radius: 50px;
	text-align: center;
	box-shadow: 2px 2px 3px #999;
	z-index: 2;
}

.my-float {
	margin: 22px;
}

img.finish__image {
	opacity: 0.7;
	filter: grayscale(100%);
	-webkit-filter: grayscale(100%);
}

.navfont {
	padding: 4px 0 0 0;
}

.third {
	color: #F2CB05;
}
.badge-rec {
	background: #000;
	color: #fff;
}
.badge-nooo {
	background: red;
	color: #fff;
}
.badge-d {
	background: #c6c0c0;
	color: #000;
}
.badge-e{
background: red;
	color: #fff;
}
</style>


</head>
<body>
	<jsp:include page="nav.jsp" />
	<div class="swiper-container tabs-buttons">
		<div class="swiper-wrapper">
			<div class="swiper-slide active-tab">도서 바자회</div>
			<div class="swiper-slide">도서대여</div>
		</div>
		<div class="swiper-scrollbar"></div>
	</div>

	<div class="swiper-container tabs-content">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="page main">

					<c:forEach items="${bazaarData}" var="BazaarVO">
						<div class="cardee ripple">
							<c:choose>
								<c:when test="${BazaarVO.sell_condition == '거래 중'}">
									<span class="badg badge-ing"><c:out
											value="${BazaarVO.sell_condition}" /></span>
								</c:when>
								<c:when test="${BazaarVO.sell_condition == '거래 완료'}">
									<span class="badg badge-com"><c:out
											value="${BazaarVO.sell_condition}" /></span>
								</c:when>
								<c:otherwise>
									<span class="badge"></span>
								</c:otherwise>
							</c:choose>
							<a
								href="Controller?cmd=bazaarPurchaseAction&number=${BazaarVO.num}">
								<img src="img/${BazaarVO.img1}" height="300" />
							</a>
							<div class="pname">
								<c:out value="${BazaarVO.name}" />
								<br />
								<h6 class="lead">
									<fmt:formatNumber value="${BazaarVO.price}"
										pattern="###,###,###" />
								</h6>
							</div>
						</div>
					</c:forEach>
					<div class="bott"></div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="page main">
					<c:forEach items="${bookData}" var="bookVO">
						<div class="cardee ripple">
							<c:choose>
								<c:when test="${bookVO.book_enroll_condition == 0}">
								</c:when>
								<c:when test="${bookVO.book_enroll_condition == 1}">
									<span class="badg badge-ing">대여중</span>
								</c:when>
								<c:when test="${bookVO.book_enroll_condition == 2}">
									<span class="badg badge-rec">예약중</span>
								</c:when>
								<c:when test="${bookVO.book_enroll_condition == 3}">
									<span class="badg badge-d">훼손</span>
								</c:when>
								<c:when test="${bookVO.book_enroll_condition == 4}">
									<span class="badg badge-e">연체</span>
								</c:when>
							</c:choose>
						
							<c:choose>
								<c:when test="${bookVO.book_enroll_condition == 3}">
									<img class="finish__image" src="img/${bookVO.book_img}"
										height="300" />
								</c:when>
								<c:otherwise>
									<a
										href="Controller?cmd=rentalBookAction&number=${bookVO.book_num}">
										<img src="img/${bookVO.book_img}" height="300" />
									</a>
								</c:otherwise>
							</c:choose>
							<input type="hidden" name="num" value="${bookVO.book_num}">
							<div class="pname">
								<c:out value="${bookVO.book_name}" />
							</div>
						</div>
					</c:forEach>
					<div class="bott"></div>
				</div>

			</div>
		</div>

	</div>

	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.min.js"></script>
	<script>
      // Card Height
      $(window).resize(function() {
         $('.cardee').each(function() {
            $(this).height($(this).width() + 50);
         });
      }).resize();
      /////////////////////////////////////////////////////////////////// Ripple Effect////////////////////////////////////////////////////////////////
      $(document)
            .on(
                  'click',
                  '.ripple',
                  function(e) {
                     var $ripple = $('<span class="rippling" />'), $button = $(this), btnOffset = $button
                           .offset(), xPos = e.pageX - btnOffset.left, yPos = e.pageY
                           - btnOffset.top, size = 0, animateSize = parseInt(Math
                           .max($button.width(), $button.height())
                           * Math.PI);
                     $ripple.css({
                        top : yPos,
                        left : xPos,
                        width : size,
                        height : size,
                        backgroundColor : $button.attr("ripple-color")
                     }).appendTo($button).animate({
                        width : animateSize,
                        height : animateSize,
                        opacity : 0
                     }, 500, function() {
                        $(this).remove();
                     });
                  });
      ///////////////////////////////////////////////////////////////////////////////////////////tab/////////////////////////////////////////////////
      
      var tabs = document.querySelector('.tabs-buttons .swiper-wrapper');
      var tabButtons = new Swiper('.tabs-buttons', {
        slidesPerView: 'auto',
        freeMode: true,
        scrollbar: '.swiper-scrollbar',
        mousewheelControl: true,
        onTap: function(swiper, event) {
          if ( event.target.classList.contains('swiper-slide') && !event.target.classList.contains('active-tab') ) {
            event.target.parentElement.querySelector('.active-tab').classList.remove('active-tab');
            event.target.classList.add('active-tab');
            tabContent.slideTo(swiper.clickedIndex);
          }
        }
      });
      var tabContent = new Swiper('.tabs-content', {
        onSlideChangeStart: function(swiper, event) {
          tabs.children[swiper.previousIndex].classList.remove('active');
          tabs.children[swiper.activeIndex].classList.add('active');
        }
      });
   </script>
</body>
</html>