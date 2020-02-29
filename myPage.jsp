<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">


<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.1/css/bulma.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">
<script src="https://kit.fontawesome.com/a32c0865ec.js"
	crossorigin="anonymous"></script>
<style>
@import url("https://fonts.googleapis.com/css?family=Nunito:400,800");

html {
	height: 100%;
}

@media ( min-height : 768px) {
	body {
		height: 100%;
	}
}

#app {
	height: 100%;
	font-family: Nunito, sans-serif;s
}

#app .container, #app .columns {
	height: 100%;
}

#app .menu {
	height: 100%;
	 background: linear-gradient(to bottom right, #FFF4A0, #F2D64B);
	border-top-left-radius: 0.5rem;
	border-bottom-left-radius: 0.5rem;
}

.menu-list__profile {
	padding: 4rem 3rem;
}

.menu-list__profile .image {
	height: 80px;
	width: 80px;
	margin-left: 17px;
}

.menu-list__profile .image img {
	border-radius: 50px;
}

.menu-list__profile .subtitle {
	padding-top: 0.8rem;
}

.menu-list__main {
	width: 70%;
	margin: 0 auto;
}

.menu-list__main li {
	padding: 0.5rem 0;
}

.menu-list__main li .fas, .menu-list__main li .far {
	width: 35px;
	font-size: 1.3rem;
	padding-right: 0.9rem;
}

.menu-list__main li a {
	color: #fff;
	display: inline-flex;
	align-items: center;
	letter-spacing: 0.1rem;
	font-weight: 800;
	opacity: 0.6;
}

.menu-list__main li a.active {
	opacity: 1;
}

.menu-list__main li a:hover {
	background-color: inherit;
	color: #fff;
	opacity: 1;
}

.menu-list__outlier {
	margin-top: 10rem;
}

#app .dashboard {
	height: 100%;
	width: 100%;
	
	border-top-right-radius: 0.5rem;
	border-bottom-right-radius: 0.5rem;
}

.dashboard__content {
	height: 100%;
	width: 80%;
	margin: 0 auto;
}

.dashboard__content .header {
	display: block;
	height: 100px;
	margin-top: 3rem;
	margin-bottom: -50px;
}

.dashboard__content .row {
	margin: 1rem 0;
}

.dashboard__content .bottom-row {
	margin-bottom: 3rem;
}

.card {
	border-radius: 0.2rem;
	box-shadow: initial;
}

.card .media {
	
}

.card .media .image img {
	border-radius: 30px;
}

.card .title {
	font-size: 0.9rem;
	letter-spacing: 1px;
	padding-bottom: 0.5rem;
}

.card .subtitle {
	margin-bottom: 1rem;
}

.card .content {
	font-size: 50px;
	transition: all 1s;
}

.font-color-dark {
	color: #274263;
}

.font-color-medium {
	color: #76879d;
}

.font-color-light {
	color: #bdc5cf;
}

.font-color-primary {
	color: #f2cb05;
}

.font-color-white {
	color: #fff;
}

.flex-center, #app, .menu-list__profile, #app .dashboard {
	display: flex;
	justify-content: center;
	align-items: center;
}

@media ( max-width : 1216px) {
	.menu-list__profile {
		flex-direction: column;
	}
	.menu-list__profile .title {
		padding-top: 0.5rem;
	}
	.menu-list__profile .subtitle {
		padding-top: 0;
	}
	.media-content {
		text-align: center;
	}
	.card .card-content {
		padding: 0rem;
	}
	.card .card .title {
		font-size: 0.7rem;
	}
	.card .content {
		font-size: 0.9rem;
	}
}

@media ( min-width : 768px) {
	#app .container {
		padding: 1rem 0;
	}
	.dashboard__content {
		display: flex;
		flex-direction: column;
		justify-content: center;
	}
}

@media ( min-width : 720px) {
	.columns {
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
	}
	.columns>.column.is-3 {
		-webkit-box-flex: 0;
		-ms-flex: none;
		flex: none;
		width: 25%;
	}
}

@media ( min-width : 720px) and (max-width: 840px) {
	.menu-list__profile .subtitle {
		font-size: 0.6rem;
	}
	.menu-list__main li .fas {
		font-size: 1.1rem !important;
	}
	.menu-list__main li a {
		font-size: 0.6rem !important;
	}
}

@media ( max-width : 720px) {
	#app .container {
		width: 100%;
	}
	.menu-list__main {
		display: none;
	}
	.card {
		max-width: 350px;
		margin: 0 auto;
	}
	.card .media {
		margin-bottom: 0.75rem !important;
	}
	.card .media .media-left {
		margin: 0 auto;
	}
}

@media ( max-width : 1216px) and (max-height: 768px) {
	#app .container {
		padding: 0;
	}
	.menu-list__profile {
		padding: 2rem 2rem;
	}
	.menu-list__profile .title {
		font-size: 1rem !important;
	}
	.media-left {
		margin-right: 0.5rem;
	}
	.media-content .title {
		font-size: 0.65rem;
	}
	.menu-list__main li .fas {
		font-size: 1.1rem !important;
	}
	.menu-list__main li a {
		font-size: 0.6rem !important;
	}
	.menu-list__outlier {
		margin-top: 1.5rem;
	}
	.card .content {
		font-size: 0.7rem;
	}
}


i.material-icons {

		font-size: 4rem;
		color: white;
		position: relative;
		border-radius: 50%;
		padding: 10px;
		margin: 5px;
		box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
		transition: color 0.2s ease, background-color 0.2s ease, transform 0.3s ease;
}

i.material-icons:after {
		content: "";
		width: 100%;
		height: 100%;
		
		transform: scale(0.8);
		position: absolute;
		top: -3px;
		left: -3px;
		border-radius: 50%;
		transition: all 0.3s ease;
}

i.material-icons:hover:after {
		transform: scale(1);
		box-shadow: 10px 0 20px rgba(0, 0, 0, 0.19), 6px 0 6px rgba(0, 0, 0, 0.23);
}

i.material-icons:nth-of-type(4) {
		background-color: #88b999;
}

i.material-icons:nth-of-type(4):hover {
		color: #88b999;
}

i.material-icons:nth-of-type(4):after {
		border-color: #88b999;
}

i.material-icons:nth-of-type(5) {
		background-color: #88b2b9;
}

i.material-icons:nth-of-type(5):hover {
		color: #88b2b9;
}

i.material-icons:nth-of-type(5):after {
		border-color: #88b2b9;
}

i.material-icons:nth-of-type(6) {
		background-color: #8897b9;
}

i.material-icons:nth-of-type(6):hover {
		color: #8897b9;
}

i.material-icons:nth-of-type(6):after {
		border-color: #8897b9;
}

i.material-icons:nth-of-type(7) {
		background-color: #af88b9;
}

i.material-icons:nth-of-type(7):hover {
		color: #af88b9;
}

i.material-icons:nth-of-type(7):after {
		border-color: #af88b9;
}

i.material-icons:nth-of-type(8) {
		background-color: #d59acb;
}

i.material-icons:nth-of-type(8):hover {
		color: #d59acb;
}

i.material-icons:nth-of-type(8):after {
		border-color: #d59acb;
}

i.material-icons:nth-of-type(1) {
		background-color: #cd8484;
}

i.material-icons:nth-of-type(1):hover {
		color: #cd8484;
}

i.material-icons:nth-of-type(1):after {
		border-color: #cd8484;
}

i.material-icons:nth-of-type(2) {
		background-color: #ec9f83;
}

i.material-icons:nth-of-type(2):hover {
		color: #ec9f83;
}

i.material-icons:nth-of-type(2):after {
		border-color: #ec9f83;
}

i.material-icons:nth-of-type(3) {
		background-color: #cdb274;
}

i.material-icons:nth-of-type(3):hover {
		color: #cdb274;
}

i.material-icons:nth-of-type(3):after {
		border-color: #cdb274;
}

i.material-icons:hover {
		background-color: transparent;
		transform: rotate(90deg);
		cursor: pointer;
		box-shadow: none;
}

p {
		color: #000;
		font-weight: 300;
		margin-top: 20px;
}



@media (min-width:993px) {
	i.material-icons {
		padding:20px;
		margin:10px;
		font-size:4rem;
	}
	i.material-icons:after {
		border-width:3px;
		top:-3px;
		left:-3px;
	}
}
a {
	color: #000;
}
hr.style2{
border-top: 1px solid #a9a9a9;
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
</style>

</head>
<body>
	<nav class="nav">
		<ul>
			<li class="dropdown"><a href="Controller?cmd=mainAction" class="dropped"><i
					class="fas fa-arrow-left fa-lg"></i> </a></li>
		</ul>
	</nav>
	<div id="app">
		<div class="container">
			<div class="columns is-gapless">
				<c:forEach items="${myData}" var="myPageVO">
				<div class="column is-3">
					<aside class="menu">
						<ul class="menu-list">
							<div class="menu-list__profile media">
								<div class="media-left">
									<figure class="image">
										 <img src="img/aa.jpg">
									</figure>
								</div>
								<div class="media-content">
									<p class="title is-5 ">${loginOK}</p>
										<p
											class="subtitle is-7 has is-uppercase  has-text-weight-bold">
											<c:out value="${myPageVO.name}" />
											|
											<c:out value="${myPageVO.department}" />
										</p>
								</div>
							</div>
						</ul>
					</aside>
				</div>
				<div class="column">
					<div class="dashboard">
						<div class="dashboard__content">
							<div class="header">
								<div>
									<p class="title is-5 is-pulled-left font-color-dark">마이페이지
									</p>
									<p class="title is-6 is-pulled-right ">
										나리신뢰지수 <span class="subtitle is-6 is-block font-color-primary"
											style="padding-top: 1.0rem; margin-left: 45px;"> <c:out
												value="${myPageVO.total_score}" /> <span
											class="font-color-light">/ 5</span></span>
									</p>
								</div>
							</div>
							<div class="row">
								<div class="columns">
									<div class="column one-third" v-for="user in firstThreeUsers">
										<user-card :user="user"></user-card>
									</div>
								</div>
							</div>
	
							<div class="row bottom-row">
								<div class="columns">
									<div class="column one-third" v-for="user in lastThreeUsers">
										<user-card :user="user"></user-card>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.3/vue.min.js"></script>
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

    const users = [
    	  {
    	    
    	    image: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample1.jpg',
    	     url: 'Controller?cmd=findUI',
    	    description: '비밀번호 변경',
    	    icon: 'track_changes'
    	  },
    	  {
    	    
    	    image: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample5.jpg',
    	    url:'Controller?cmd=memberDeleteUI',
    	    description: "회원탈퇴",
    	    icon: 'cancel_presentation'
    	  },
    	  {
    	   
    	    image: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample4.jpg',
    	    url:'Controller?cmd=logoutAction',
    	    description: "로그아웃",
    	    icon: 'power_settings_new'
    	  },
    	  {
    	  
    	    image: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample8.jpg',
    	    url:'Controller?cmd=enrollProductAction',
    	    description: '등록한 상품',
    	    icon:'beenhere'
    	  },
    	  {

    	    image: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample3.jpg',
    	    url:'Controller?cmd=buyProductAction',
    	    description: '구매한 상품',
    	    icon:'add_shopping_cart'
    	  },
    	  {
    	    image: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample9.jpg',
    	    url:'Controller?cmd=myPageBookAction',
    	    description: "대여/예약 목록",
    	    icon:'turned_in_not'
    	  },
    	   {
    	    image: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample9.jpg',
    	    url:'Controller?cmd=myPageTotalScoreAction',
    	     description: "평점 목록",
    	     icon: 'thumb_up'
    	  },
    	   
    	   {
    	    image: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample9.jpg',
    	    url:'Controller?cmd=myPageDeclareListAction',
    	    description: "신고 목록",
    	    icon:'new_releases'
    	   		
    	  }
    	]

    	const UserCard = {
    	  template: 
    	    `
    	    <div class="card">
    	
    	      <div class="card-content">
    	      <a :href="user.url">
    	        <div class="media">
    	          <div class="media-left">
    	            <i class="material-icons">{{user.icon}}</i>
    	          </div>
    	        </div>
    	      
    	          <div class="media-content">
    	          <p class="title is-6 is-uppercase font-color-primary has-text-weight-bold">{{user.name}}</p>
    	          <p class="subtitle is-7 font-color-light has-text-weight-bold">{{user.location}}</p>
    	          <p class="content has-text-weight-bold" style="font-size: 20px;">{{user.description}}</p>
    	         
    	          </div> 
    	      </div>
    	      </a>
    	      <hr class="style2">
    	    </div>`,
    	  props: ['user']
    	}
    
    	new Vue({
    	  el: '#app',
    	  computed: {
    	    firstThreeUsers() {
    	      return users.splice(0, 6);
    	    },
    	    lastThreeUsers() {
    	      return users.splice(-3)
    	    }
    	  },
    	  data: {
    	    users
    	  },
    	  components: {
    	    'user-card': UserCard
    	  }
    	})

   </script>
</body>
</html>