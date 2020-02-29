<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">

<title>Login</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
   href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link href='https://fonts.googleapis.com/css?family=Lato:300,400'
   rel='stylesheet' type='text/css'>
<link href="css/login.css" rel="stylesheet">
<!------------------------ 메인css-------------------------->
<style>

h1 {
   font-size: 20px;
   text-align: center;
}
.form-group {
   margin-top: 100px;
   margin-bottom: 100px;
}
</style>
</head>
<body>

   <div class="login-wrap">
      <div class="login-html">
         <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
            for="tab-1" class="tab"></label> <input id="tab-2"
            type="hidden" name="tab" class="sign-up"><label for="tab-2"
            class="tab"></label>
         <div class="login-form">
         	<h1>MODORI</h1>
            <div class="sign-in-htm">
               <form id="join" name="join" method="post"
                  action="Controller?cmd=memberDeleteAction">

                  <div class="form-group">
                     <div class="controls">
                        <h1>회원이 아닙니다 :(</h1>
                     </div>
                  </div>
                  
                  <a href="Controller?cmd=loginUI"><input type="button" class="col-1-4" value="돌아가기"></a>
                  
               </form>
            </div>
         </div>
      </div>
   </div>
   


</body>
</html>