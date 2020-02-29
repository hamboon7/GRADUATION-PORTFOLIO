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
<title>검색화면</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js" type="text/javascript"></script>

<style>
.rating {
	width: 20rem;
	direction: rtl;
	unicode-bidi: bidi-override;
	color: #ddd; /* Personal choice */
}
.rating input {
	display: none;
}
.rating label:hover,
.rating label:hover ~ label,
.rating input:checked + label,
.rating input:checked + label ~ label {
	color: #ffc107; /* Personal color choice. Lifted from Bootstrap 4 */
}
</style>

</head>
<body>
	<div class="rating">
		<input id="rating-5" type="radio" name="rating" value="5"/>
		<label for="rating-5"><i class="fas fa-3x fa-star"></i></label>
		<input id="rating-4" type="radio" name="rating" value="4"/>
		<label for="rating-4"><i class="fas fa-3x fa-star"></i></label>
		<input id="rating-3" type="radio" name="rating" value="3"/>
		<label for="rating-3"><i class="fas fa-3x fa-star"></i></label>
		<input id="rating-2" type="radio" name="rating" value="2"/>
		<label for="rating-2"><i class="fas fa-3x fa-star"></i></label>
		<input id="rating-1" type="radio" name="rating" value="1"/>
		<label for="rating-1"><i class="fas fa-3x fa-star"></i></label>
	</div>
  </body>
</html>