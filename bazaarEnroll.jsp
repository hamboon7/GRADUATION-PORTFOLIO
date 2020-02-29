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
		<form method="post" action="Controller?cmd=bazaarEnrollAction" enctype="multipart/form-data">
			<div class="form-group">
				<h2 class="heading">바자회 상품등록</h2>
				<div class="controls">
					<input type="text" id="email" class="floatLabel" name="stu_seller_num">
					<label for="email">기부자 학번</label>
				</div>
				<div class="controls">
					<input type="text" id="email" class="floatLabel" name="name">
					<label for="email">상품명</label>
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
				<div class="controls">
					<textarea rows="5" cols="30" class="floatLabel" name="comment" maxlength="300"></textarea>
					<label for="comment">상품설명</label>
				</div>
				<h3 class="heading">제품 이미지는 최대 3장까지 업로드 가능합니다.</h3>

				<div class="custom-file" style="margin-bottom: 10px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img1"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 10px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img2"
						aria-describedby="inputGroupFileAddon01"> 
						<label class="custom-file-label" for="inputGroupFile01"></label>
				</div>
				<div class="custom-file" style="margin-bottom: 20px">
					<input type="file" class="custom-file-input" id="inputGroupFile01" name="img3"
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
					보존상태 훼손/필기여부와 수리필요여부 <br>
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
							<th scope="row">훼손/필기</th>
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
		
	</script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/zepto/1.0/zepto.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</body>
</html>



