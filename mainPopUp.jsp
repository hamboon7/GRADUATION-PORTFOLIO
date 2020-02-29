<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
	
<script src="https://code.jquery.com/jquery-latest.js"></script> 

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a32c0865ec.js" crossorigin="anonymous"></script>
<style>
    /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content/Box */
    .modal-content {
        background-color: #fefefe;
        margin: 15% auto; /* 15% from the top and centered */
        padding: 20px;
        border: 1px solid #888;
        width: 80%; /* Could be more or less, depending on screen size */                          
    }
 
</style>
</head>
<body>
    <!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">바자회 기부 공지</span></b></span></p>
                <p style="text-align: center; line-height: 1.5;"><br /></p>
                <p style="text-align: center; line-height: 1.0;"><span style="font-size: 14pt;">바자회 기간 : 1회~6회</span></p>
                <p style="text-align: center; line-height: 1.0;"><span style="font-size: 14pt;">총 기부금 : 132,600원</span></p>
                <p style="text-align: center; line-height: 1.0;"><span style="font-size: 14pt;"><img alt="..." src="img/fireSnack1.jpeg" width="200" height="200"></span></p>
                <p style="text-align: center; line-height: 1.0;"><span style="font-size: 14pt;"><img alt="..." src="img/fireSnack2.jpg" width="200" height="200"></span></p>
                <p style="text-align: center; line-height: 1.0;"><span style="font-size: 14pt;">1회~6회 총 기부액으로</span></p>
                <p style="text-align: center; line-height: 1.0;"><span style="font-size: 14pt;">성동구 소방서에 </span></p>
                <p style="text-align: center; line-height: 1.0;"><span style="font-size: 14pt;">간식을 전달해드렸습니다.</span></p>
                <p style="text-align: center; line-height: 1.0;"><span style="font-size: 14pt;">바자회에 참여해주셔서</span></p>
                <p style="text-align: center; line-height: 1.0;"><span style="font-size: 14pt;">감사합니다~^^</span></p>
                <p style="text-align: center; line-height: 1.5;"><br /></p>
            <div style="cursor:pointer;background-color:#DDDDDD; color: #000; text-align: center;padding-bottom: 10px; padding-top: 10px; text-decoration: none;">
                <a href="Controller?cmd=mainAction">
                <span class="pop_bt" style="font-size: 13pt;" >
                     닫기
                </span>
                </a>
            </div>
      </div>
 
    </div>
        <!--End Modal-->
 
 
    <script type="text/javascript">
      
        jQuery(document).ready(function() {
                $('#myModal').show();
        });
        //팝업 Close 기능
        function close_pop(flag) {
             $('#myModal').hide();
        };
        
      </script>
</body>
</html>