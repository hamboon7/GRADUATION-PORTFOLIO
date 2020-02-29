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
		<form method="post" action="Controller?cmd=bookEnrollAction" enctype="multipart/form-data">
			<div class="form-group">
				<h2 class="heading">대여/예약 도서등록</h2>
				<div class="controls">
					<input type="text" id="email" class="floatLabel" name="stu_num">
					<label for="email">기부자 학번</label>
				</div>
				<div class="controls">
					<input type="text" id="email" class="floatLabel" name="name">
					<label for="email">상품명</label>
				</div>
				<div class="controls">
					<input type="text" class="floatLabel" name="kakao" placeholder="오픈카톡 주소" />
				</div>
				<h3 class="heading">등록할 상품분류를 선택해주세요.</h3>

				<div class="row">
					<div class="col">
						<div class="box controls">
							<select id="dropdown" name="category" class="floatLabel">
								<option value="0">상품분류</option>
									<option value="1">전공책</option>
									<option value="2">자격증책</option>
							</select>
						</div>
					</div>
				</div>
				<h3 class="heading">제품 이미지는 1장 업로드 가능합니다.</h3>

				<div class="custom-file" style="margin-bottom: 10px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="book_img"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
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
		
	</script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/zepto/1.0/zepto.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</body>
</html>



