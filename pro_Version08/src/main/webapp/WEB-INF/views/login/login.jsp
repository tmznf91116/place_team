<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간, 인테리어 관련 사이트 | 로그인</title>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<script type="text/javascript"></script>
<!-- icon script 링크 -->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style type="text/css">
body {
	text-align: center;
	width: 100%;
	background-color: #FAFAFA;
	margin: 0 auto;
	padding: 0 auto;
}

#login_input {
	display: table;
	margin-left: 37%;
	margin-right: 0px auto;
}

.css_input_userIDPW {
	width: 26.5em;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	line-height: 3.5em;
}

.css_input_btn {
	width: 26%;
	padding: 8px 8px 8px 8px;
	border: 1px solid #dbdbdb;
	background-color: #00C892;
	border-radius: 4px;
	box-sizing: border-box;
	align-items: center;
	font-weight: 700;
	font-size: 15px;
	line-height: 21px;
	transition: border-color .1s, background-color .1s;
	resize: none;
	-webkit-appearance: none;
}

.aTag {
	text-decoration: none;
	color: black;
	font-size: 12px;
}
.mainLogo {
	font-family: 'Gugi', cursive;
	color: #111;
	font-size: 55px;
	text-decoration: none;
}
a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	/* color: skyblue; */
	color: #00C892;
	text-decoration: none;
}
#mainLogoDiv {
	margin-top: 7%;
}
.main {
	margin-bottom: 1%;
}
footer {
	width: auto;
	height: 17em;
	background: rgb(226, 226, 226);
}
.login_text{
	color:  red;
	font-weight: 400;
}
.text_add{
	text-align: center;
	color: red;
	font-size: 13px;
}
</style>
					
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		
			
		   $(function(){
			   	/*비밀번호 12글자이상  */
			  	 $("#in_userPw").keyup(function(){
					  console.log($("#in_userPw").val());
					  console.log($("#in_userPw").val().length);
					  var tlength=$("#in_userPw").val();
					  
					   if(tlength.length<8){
						  $("#add_text2").text("영문,숫자를 포함한 8자리 이상 입력해주세요.");
					  }else{
						  $("#add_text2").text(""); 
					  }
				  })
			   
				   /*아이디 4글자이상 8글자이하 이메일 형태  */
					  $("#in_userEmail").keyup(function(){
						  console.log($("#in_userEmail").val());
						  console.log($("#in_userEmail").val().length);
						  var tlength=$("#in_userEmail").val();
						  
						  
						  
						   if(tlength.length<4 ){
							  $("#add_text").text("영문자 4~20자 이하로 입력해주세요.");
						  }else {
							  $("#add_text").text(""); 
						  }
						  
					  })
					 
			  
				   
				   
			   });
		
			function login_check(){
				/* alert("test"); */
				
				var idCheck=/^[a-z A-Z 0-9\-_]+@[a-z A-Z 0-9\-]+(\.[a-z A-Z 0-9 \-]+)+$/; 
				var pwCheck=/^[a-zA-Z0-9]{4,20}$/;  
				
				 var idAdd = document.getElementById("add_text");
		         
				
				//변수idCheck와 id전달값 비교
				if(idCheck.test($("#in_userEmail").val())==false){
					idAdd.innerHTML = "<br><b class='login_text'>ID 를 확인하시고 다시 입력해주세요.<b>";
	                 return false;
				 	}else if (!/^[a-z A-Z 0-9\-_]+@[a-z A-Z 0-9\-]+(\.[a-z A-Z 0-9 \-]+)+$/.test($("#in_userEmail").val())) {
	                 idAdd.innerHTML = "영문자 4~20자 이하로 입력해주세요.";
	                 return false;
					/* alert("ID 입력값이 잘못되었습니다. 다시 입력하세요."); */
					/* $("#in_userEmail").focus();
					return false; */
				}
				
				//변수pwCheck와 pw전달값 비교
				if(pwCheck.test($("#in_userPw").val())==false){
					alert("패스워드 입력값이 잘못되었습니다. 다시 입력하세요.");
					$("#in_userPw").focus();
					return false;
				}
				
				return $("#loginForm").submit(); 
		
				
			}
			
			
			
		</script>
		
	</head>
	<body>
<body>
	<div class="main" >
		<div id="mainLogoDiv"></div><a href="index"><span class="mainLogo">공간</span></a></div>
		<section>
			<form action="login" method="post" id="loginForm">
				<div id="login_input">
					<div>
						<input class="css_input_userIDPW" type="text" id="in_userEmail" name="in_userEmail" placeholder="이메일"><br>
						<input class="css_input_userIDPW" type="password" id="in_userPw" name="in_userPw" placeholder="비밀번호">
					</div>
						<span id="add_text" class="text_add"><!-- <br>토글기능x 아니었음 --></span><br>
						<span id="add_text2" class="text_add"><!-- <br>토글기능x 아니었음 --></span>
				</div>
				<p />
				<input class="css_input_btn" type="button" onclick="login_check()" value="로그인"> 
				<!-- <input class="css_input_btn" type="button" onclick="$('.text_add').toggle()" value="로그인"> -->
				<p />
				<!-- 버튼에 이미지넣을것 -->
			</form>
			<a class="aTag" href="user_Join">회원가입</a>
			<p />
			<a class="aTag" href="">비회원 주문 조회하기</a>
			<p />
		</section>
		<section>
			<!-- 각 플렛폼 API -->
		</section>
				<!-- Footer Section Begin -->
		<footer>
			<pre
				style="color: rgb(107, 107, 107); font-size: 0.7em; text-align: left;">
		
			<span style="font-weight: 700; font-size: 6em;">1670-0876</span><a
					href=""><i class="fab fa-apple"
					style="margin-left: 35%; width: 4em; height: 4em;"></i></a><a href=""><i
					class="fab fa-google-play"
					style="margin-left: 2%; width: 4em; height: 4em;"></i></a><a href=""><i
					class="fab fa-facebook"
					style="margin-left: 2%; width: 4em; height: 4em;"></i></a><a href=""><i
					class="fab fa-instagram"
					style="margin-left: 2%; width: 4em; height: 4em;"></i></a>
			<span style="font-size: 2em;">평일 09:00 ~ 18:00 (주말 & 공휴일 제외)</span>
			
			<span>브랜드 스토리회사소개채용정보이용약관개인정보처리방침공지사항고객센터고객의 소리전문가 등록사업자 구매회원제휴/광고 문의입점신청 문의</span>
			
			<span>상호명(주)버킷플레이스이메일(고객문의) space@bucketplace.net (제휴문의) contact@bucketplace.net</span>
			<span>대표이사:홍길동 사업자등록번호:119-86-91245 통신판매업신고번호:제2018-서울서초-0580호 주소:서울 서초구 서초대로74길 4 삼성생명서초타워 25, 27층</span>
			<span>공간은 개별 판매자가 상품을 판매하는 오픈마켓이며 (주)버킷플레이스는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 일체 책임을 지지 않습니다.</span>
			
			<span>Copyright 2021. bucketplace, Co., Ltd. All rights reserved [ developer : TeamSpace ]</span>
			
		</pre>
		</footer>
	<!-- Footer Section End -->
</body>
</html>