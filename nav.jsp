<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style>
ul.nav.justify-content-center {
	height: 60px;
	padding: 5px 0 0 0;
	background-color: #fff;
}
a.nav-link {
	margin-top: -3px;
	color: #000;
	font-size: 11px;
}
.nav-item {
	margin-right: 10px;
}
.material-icons {
	font-size: 25px;
}
.navfont {
	margin: 1px 0 0 2px;
	
	font-weight: 600;
}
.ca {
	margin-left: -7px;
}
.me {
	margin-left: -3px;
}
.cca {
	margin-right: -12px;
}
.fl {
	margin-left: -4px;
}
.activeee {
	color: #F2CB05;
}
small {
	position: absolute;
	right: 10px;
	top: 5px;
}
.bottom{
	margin: 30px;
}
</style>

</head>

<body>
	<ul class="nav justify-content-center fixed-top ">
		<li class="nav-item ">
		<a class="nav-link " href="Controller?cmd=mainAction"> <i
				class="material-icons first">search</i>
				<div class="navfont first">검색</div></a>
		</li>
		
		<li class="nav-item">
		<a class="nav-link cca " href="Controller?cmd=categoryUI">
		<i class="material-icons secon">menu</i>
				<div class="navfont ca secon">카테고리</div> </a>
		</li>
		
		<li class="nav-item">
		<a class="nav-link third" href="Controller?cmd=bazaarAction"><i
				class="material-icons third">turned_in_not</i>
				<div class="navfont bo third">서적</div> </a>
		</li>
		
		<li class="nav-item">
		<a class="nav-link " href="Controller?cmd=auctionAction"><i
				class="material-icons furth">local_florist</i>
				<div class="navfont fl furth">EVENT</div> </a>
		</li>
		
		<li class="nav-item">
		<a class="nav-link " href="Controller?cmd=myPageAction"><i
				class="material-icons five">person</i>
				<div class="navfont me five">내정보</div> </a>
		</li>
	</ul>
	<div class="bottom"></div>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="js/nav.js"></script>
	
</body>

</html>