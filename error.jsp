<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">

<title>Login Error</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/login.css" rel="stylesheet">
<!------------------------ 메인css-------------------------->

<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link href='https://fonts.googleapis.com/css?family=Lato:300,400'
	rel='stylesheet' type='text/css'>

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery-ui-autocomplete.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.min.js"></script>

<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->

<style type="text/css">
.error {
	text-align: center;
	padding-bottom: 30px;
}
</style>

<script type="text/javascript">
	function CheckForm() {
		//[1]아이디 텍스트 박스에 접근해서 id 변수로 저장하는데, 입력한 id값을 저장
		var id = document.join.id;
		//만약 id의 값이 아무것도 입력되지 않았다면?
		if (id.value == "") {
			//아이디를 입력하시오! 경고메세지 띄어주기
			window.alert("아이디를 입력하시오.");
			//아이디 폼에 커서깜빠거리는 포커스 주기
			document.join.id.focus();
			//해당 아이디 폼 영역 선택하기 방법 1
			document.join.id.select();
			return false; //현재 submit이벤트를 중지하는 개념
			//[2]암호체크
			//만약 document문서 안에 있는 join아이디를 가지는 폼안에 있는
			//txtpassword라는 id를 가진 <input>태그로 부터 입력받은 패스워드가 없다면?
		} else if (document.join.pw.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("암호를 입력하세요");
			return false;
		} else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}

	function CheckForm2() {
		if (document.join2.number.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("아이디를 입력하세요");
			return false;

		} else if (document.join2.pw.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("비밀번호를 입력하세요");
			return false;

		} else if (document.join2.name.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("이름를 입력하세요");
			return false;

		} else if (document.join2.email.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("이메일을 입력하세요");
			return false;

		} else if (document.join2.phone.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("전화번호를 입력하세요");
			return false;

		} else if (document.join2.department.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("학과를 입력하세요");
			return false;

		} else if (document.join2.bank.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("은행을 입력하세요");
			return false;

		} else if (document.join2.bankNumber.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("계좌번호를 입력하세요");
			return false;

		} else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join2.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}
</script>

</head>
<body>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">로그인</label> <input id="tab-2"
				type="radio" name="tab" class="sign-up"><label for="tab-2"
				class="tab">회원가입</label>
			<div class="login-form">
				<div class="sign-in-htm">
					<form id="join" name="join" onsubmit="return validate();"
						method="post" action="Controller?cmd=loginAction">
						<!--  General -->
						<div class="form-group">
							<hr class="heading"/>
							<div class="controls">
								<input type="text" id="id" class="floatLabel" name="id">
								<label for="id">학번</label>
							</div>
							<div class="controls">
								<input type="password" id="password" class="floatLabel" name="pw">
								<label for="password">비밀번호</label>
							</div>
						</div>
						<div class="error">
							<a href="#forgot">아이디와 비밀번호가 맞지 않습니다.<br> 다시 로그인해주세요~</a>
						</div>
						<input type="button" class="col-1-4" value="로그인" onclick="CheckForm();" >
						
						<div class="foot-lnk">
							<a href="Controller?cmd=findUI">비밀번호를 잊어버리셨나요?</a>
						</div>
					</form>
				</div>
				<div class="sign-up-htm">
					<form id="join2" name="join2" onsubmit="return validate();"
						method="post" action="Controller?cmd=memberAction">
						<!--  General -->
						<div class="form-group">
							<hr class="heading"/>
							<div class="controls">
								<input name="number" type="text" id=number class="floatLabel">
								<label for="number">학번</label>
							</div>
							<div class="controls">
								<input type="password" id="pass" class="floatLabel" name="pw" data-type="password">
								<label for="pass">비밀번호</label>
							</div>
							<div class="controls">
								<input name="name" type="text" id="name" class="floatLabel">
								<label for="name">이름</label>
							</div>
							<div class="controls">
								<input name="email" type="text" id="email" class="floatLabel">
								<label for="email">이메일</label>
							</div>
							<div class="controls">
								<input name="phone" type="text" id="phone" class="floatLabel">
								<label for="phone">전화번호(- 없이 입력해주세요)</label>
							</div>
							<div class="controls">
								<select id="department" class="floatLabel" name="department" required>
									<option value="">과를 선택하세요</option>
									<option>경영과</option>
									<option>니트패션디자인과</option>
									<option>도예과</option>
									<option>문예창작과</option>
									<option>보건행정과</option>
									<option>비서인재과</option>
									<option>사회복지보육과</option>
									<option>산업디자인과</option>
									<option>생활체육과</option>
									<option>섬유패션디자인과</option>
									<option>세무회계과</option>
									<option>스마트IT과</option>
									<option>시각미디어디자인과</option>
									<option>식품영양과</option>
									<option>실무영어과</option>
									<option>실무일본어과</option>
									<option>실무중국어과</option>
									<option>실용음악과</option>
									<option>영상디자인과</option>
									<option>외식산업과</option>
									<option>유아교육과</option>
									<option>인테리어디자인과</option>
									<option>치위생과</option>
									<option>컴퓨터정보과</option>
									<option>패션디자인과</option>
									<option>항공과</option>
									<option>행정실무과</option>
									<option>호텔관광과</option>
								</select> <label for="department">학과</label>
							</div>
							<div class="controls">
								<input name="bank" type="text" id="bank" class="floatLabel">
								<label for="bank">은행(은행 제외하고 이름만 적어주세요 ex)우리, 국민)</label>
							</div>
							<div class="controls">
								<input name="bankNumber" type="text" id="bankNumber" class="floatLabel">
								<label for="bankNumber">계좌번호(- 적어주세요)</label>
							</div>
						</div>
						<input type="button" class="col-1-4" value="Sign UP" onclick="CheckForm2();">
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		(function($) {
			function floatLabel(inputType) {
				$(inputType)
						.each(
								function() {
									var $this = $(this);
									// on focus add cladd active to label
									$this.focus(function() {
										$this.next().addClass(
												"active");
									});
									//on blur check field and remove class if needed
									$this
											.blur(function() {
												if ($this.val() === ''
														|| $this
																.val() === 'blank') {
													$this
															.next()
															.removeClass();
												}
											});
								});
			}
			// just add a class of "floatLabel to the input field!"
			floatLabel(".floatLabel");
		})(jQuery);
	</script>
</body>
</html>