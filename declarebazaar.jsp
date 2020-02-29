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
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="css/enroll.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script src="js/jquery-3.4.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<style type="text/css">
	.form-group2 {
		margin-top: -30%;
	}
	#email {
		color: #999;
		font-weight: normal;
	}
	form {
		padding: 10px 0;
	}
	
</style>
</head>
<body>
	<div class="container">
		<form method="post" action="Controller?cmd=declareBazaarEnrollAction" class="bazaar">
		<c:forEach items="${bazaarDetailData}" var="declareVO">
			<div class="form-group2">
				<h2 class="heading">신고등록</h2>
				<div class="controls">
					<input type="hidden" name="student_num_bazaar" value="${declareVO.stu_seller_num}">
					<input type="text" id="email" class="floatLabel" name="bazaar_name" value="${declareVO.name}">
				</div>
				<div class="controls">
					<textarea rows="5" cols="30" class="floatLabel" name="comment" maxlength="300"></textarea>
					<label for="comment">신고이유</label>
				</div>
				<button type="submit" class="col-12">등록하기</button>
			</div>
		</c:forEach>
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
	</script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/zepto/1.0/zepto.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</body>
</html>



