<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Aler Template">
    <meta name="keywords" content="Aler, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <title>커뮤니티 글쓰기</title>
	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
		rel="stylesheet">
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/store.css" type="text/css">
   <link rel="stylesheet" href="css/store2.css" type="text/css">
   <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
   <style type="text/css">   
body {
   background-color: #FAFAFA;
}

section {
   text-align: center;
   margin-top: 3%;
}

#categoryName {
   margin-top: 3%;
}
.css_input_btn {
   width: 8%;
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
}

table {
   text-align: center;
   margin: auto;
   width: 80%;
   border-spacing: 10px;
   border-collapse: collapse;
}

.table_th {
   text-align: center;
   width: 300px;
   padding-top: 1%;
   padding-bottom: 1%;
   font-size: 17px;
   font-weight: bold;
   color: rgb(41, 41, 41);
}

.table_td {
   width: 300px;
   padding-top: 1%;
   padding-bottom: 1%;
   font-size: 15px;
   color: rgb(41, 41, 41);
}

hr {
   width: 80%;
}

thead {
   border-top: 0.2px solid;
   border-bottom: 0.2px solid;
   border-color: gray;
}

.page-num {
   margin-top: 15px;
}

.page-num oi {
   width: 36px;
   height: 35px;
}

.num {
   position: relative;
   height: 33px !important;
   margin-left: 5px;
   margin-right: 5px;
   border: none;
}

.num>span {
   font-weight: bold;
   position: relative;
   top: 2px;
}

.mainLogo {
   font-family: 'Gugi', cursive;
   color: #111;
   font-size: 55px;
}

footer {
   color: black;
   margin-top: 15%;
   font-size: 12px;
}

h2 {
   text-align: center;
   margin-top: 3%;
   display: block;
   font-size: 25px;
   font-weight: bold;
   color: rgb(41, 41, 41);
   word-break: keep-all;
}

.row2 {
   text-align: center;
   width: 100%;
   margin-left: 12%;
}

#buyDetailsForm span {
   box-sizing: content-box;
   margin-right: 3%;
}

#myPageDiv {
   border-top: 1px solid #ebebeb;
   text-align: center;
}

.layout-navigation-bar-login__item {
   position: relative;
   display: inline-block;
   padding: 2px;
   margin: 2%;
   color: #757575;
   font-size: 12px;
   font-weight: 700;
   line-height: 20px;
   text-decoration: none;
   color: #757575;
}

.css_input_userInfo {
   text-align: left;
   width: 50.5%;
   margin-bottom: 3%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 20px/20px;
   box-sizing: border-box;
   font-size: 15px;
   line-height: 3em;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
}
.css_textarea {
   text-align: left;
   width: 39%;
   height: auto;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 20px/20px;
   box-sizing: border-box;
   font-size: 15px;
   margin-top: 1%;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
}
#searchButton {
   color: #757575;
}
#search{
   text-align: left;
   width: 80%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 20px 20px 20px 20px;
   box-sizing: border-box;
   font-size: 15px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
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
.inquiriesExample {
   color: grey;
   padding-top: 13%;
   font-size: 12px;
}
.mypageUserBtn {
   width: 15%;
   margin-top: 3%;
   border: none;
   background-color: #00C892;
   border-radius: 4px;
   box-sizing: border-box;
   align-items: center;
   font-weight: 700;
   line-height: 3em;
   font-size: 15px;
}
.mainWrap {
	text-align: center;
}
.addFile {
	display: none;
}
img {
   width: 5em;
   height: 5em;
   border-radius: 50%;
}
.imgHover img{
	transition: all 0.5s ease-in-out;
}
.imgHover img:hover {
	transform: scale(1.2);
    -webkit-transform: scale(3);
    -moz-transform: scale(3);
    -ms-transform: scale(3);
    -o-transform: scale(3);
}
footer {
   width: auto;
   height: auto;
   background: rgb(226, 226, 226);
}
   </style>
</head>
   
<body>
    <!-- Offcanvas Menu Wrapper Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <span class="icon_close"></span>
        </div>
        <div class="logo">
                <a href="index"><span class="mainLogo">공간</span></a>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
    <!-- Offcanvas Menu Wrapper End -->

    <!-- Header Section Begin -->
   <header class="header-section">
      <div class="hs-top">
         <div class="container">
            <div class="row">
               <div class="col-lg-2">
                  <div class="logo">
                     <a href="index"><span class="mainLogo">공간</span></a>
                  </div>
               </div>
               <div class="col-lg-10">
                  <div class="ht-widget">
                     <c:if test="${session_flag != 'success' }">
                        <!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
                        <a href="login" class="layout-navigation-bar-login__item">로그인</a>
                        <span>&nbsp;|&nbsp;</span>
                        <!-- 로그인 -->
                        <!-- 로그인시 로그아웃 -->
                        <a href="user_Join" class="layout-navigation-bar-login__item">회원가입</a>
                        <!-- 회원가입 -->
                        <!-- 로그인시 마이페이지 -->
                        <!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
                     </c:if>
                     <c:if test="${session_flag == 'success' }">
                        <!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
                        <a href="loginOut" class="layout-navigation-bar-login__item">로그아웃</a>
                        <span>&nbsp;|&nbsp;</span>
                        <!-- 로그인 -->
                        <!-- 로그인시 로그아웃 -->
                        <a href="myPage?nickname=${session_nickName }"
                           class="layout-navigation-bar-login__item">마이페이지</a>
                        <!-- 회원가입 -->
                        <!-- 로그인시 마이페이지 -->
                        <!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
                     </c:if>
                  </div>
               </div>
            </div>
            <div class="canvas-open">
               <span class="icon_menu"></span>
            </div>
         </div>
      </div>
      <div class="hs-nav" style="border-bottom: 1px solid #ebebeb;">
         <div class="container">
            <div class="row">
               <div class="col-lg-9">
                  <nav class="nav-menu">
                     <ul>
                        <li class="active"><a href="index">홈</a></li>
                        <!-- 홈 -->
                        <li><a href="store1">스토어</a></li>
                        <!-- 스토어 -->
                        <li><a href="companyMain">시공업체</a></li>
                        <!-- 시공업체 -->
                        <!-- <li><a href="interiorInquiries">시공문의</a></li> -->
                        <!-- 시공업체상세페이지 -->
                        <li><a href="communityMain">커뮤니티</a></li>
                        <!-- 커뮤니티 -->
                        <li><a href="event">이벤트</a></li>
                        <!-- 이벤트 -->
                        <c:if test="${session_right == 'Manager' }">
                           <li><a href="adminPage">관리자페이지</a></li>
                        </c:if>
                     </ul>
                  </nav>
               </div>
               <div class="col-lg-3">
                  <div class="hn-social">
                     <!-- 검색기능 -->
                     <form action="">
                        <input class="" type="text" id="search"
                           name="search"
                           placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;search">
                        <!-- 검색 -->
                        <input class="fas fa-search fa-lg" id="searchButton"
                           type="button" id="" onclick="" value="검색">
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </header>
   <!-- Header End -->

      <!--파일업로드 이미지 미리보기-->
   <form action="Write"  method="post" enctype="multipart/form-data" id="Write">
	   <div class="mainWrap">
      		<h2>커뮤니티 글쓰기</h2>
        	<span class="inquiriesExample">자기만의 인테리어를 마음껏 뽑내보세요.</span><p />
               <div>
                  <input class="css_input_userInfo" type="text" name="com_Title" placeholder="제목을 입력해주세요.">
               </div>
               <div>
				  <span>
						<label for="addFile"> <img src="../img/mypage/mypageImg.png"
							style="cursor: pointer;" />
						</label> <a><input id="addFile" class="addFile" type="file" onchange="previewImg(event);" name="comm1"></a>
						<span id="image_container" class="imgHover"></span>
				  </span>
				  <span><textarea id="" name="com_Content1" class="css_textarea" placeholder="◀--이미지를 클릭하여 사진을 올려주세요."></textarea></span>
               </div>
               <div>
				  <span>
						<label for="addFile2"> <img src="../img/mypage/mypageImg.png"
							style="cursor: pointer;" />
						</label> <a><input id="addFile2" class="addFile" type="file" onchange="previewImg2(event);" name="comm2"></a>
						<span id="image_container2" class="imgHover"></span>
				  </span>
				  <span><textarea id="" name="com_Content2" class="css_textarea" placeholder="◀--이미지를 클릭하여 사진을 올려주세요."></textarea></span>
               </div>
               <div>
				  <span>
						<label for="addFile3"> <img src="../img/mypage/mypageImg.png"
							style="cursor: pointer;" />
						</label> <a><input id="addFile3" class="addFile" type="file" onchange="previewImg3(event);" name="comm3"></a>
						<span id="image_container3" class="imgHover"></span>
				  </span>
				  <span><textarea id="" name="com_Content3" class="css_textarea" placeholder="◀--이미지를 클릭하여 사진을 올려주세요."></textarea></span>
               </div>
            
      <div class="uploader_sch">            
         <input type="hidden" name="user_Nickname" value="${session_nickName }">
         <input class="mypageUserBtn" type="submit" value="작성하기">
      </div>   
	  </div>
   </form>
   
	<!-- 이미지미리보기 -->
	<script>
		 function previewImg(event) {
			var reader = new FileReader();
			
			reader.onload = function(event) {	
				var img = document.createElement("img");
				
				img.setAttribute("src", event.target.result);
				img.setAttribute("style", "border-radius: 100%;");
				
				document.querySelector("span#image_container").appendChild(img); 
				};
				
				reader.readAsDataURL(event.target.files[0]);
				
				} 
		 function previewImg2(event) {
			var reader = new FileReader();
			
			reader.onload = function(event) {	
				var img = document.createElement("img");
				
				img.setAttribute("src", event.target.result);
				img.setAttribute("style", "border-radius: 100%;");
				
				document.querySelector("span#image_container2").appendChild(img); 
				};
				
				reader.readAsDataURL(event.target.files[0]);
				
				} 
		 function previewImg3(event) {
			var reader = new FileReader();
			
			reader.onload = function(event) {	
				var img = document.createElement("img");
				
				img.setAttribute("src", event.target.result);
				img.setAttribute("style", "border-radius: 100%;");
				
				document.querySelector("span#image_container3").appendChild(img); 
				};
				
				reader.readAsDataURL(event.target.files[0]);
				
				} 
	</script>
			<!-- top -->
		<a
			style="display: scroll; position: fixed; bottom: 10px; right: 20px; cursor: pointer;"
			href="#" title="top"> <i class="fas fa-arrow-circle-up"
			style="width: 2em; height: 2em;"></i></a>
		<!-- top -->
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

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.richtext.min.js"></script>
    <script src="js/image-uploader.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
