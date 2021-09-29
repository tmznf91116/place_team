<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간, 마이페이지 | 마이페이지메인</title>
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap"
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
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
	/* location.reload(true); */
	var interval = setTimeout(function () {
		location.reload(); 
		}, 2000);
</script>

<style type="text/css">
body {
	background-color: #FAFAFA;
	height: auto;
}

section {
	text-align: center;
	margin-top: 3%;
}

#categoryName {
	margin-top: 3%;
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

h2 {
	text-align: center;
	margin-top: 1%;
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
#myPageDiv {
	border-top: 1px solid #ebebeb;
	text-align: center;
}

#mypageUserBox {
	text-align: center;
	float: left;
	margin-top: 3%;
	margin-left: 12%;
	border: 1px solid #dbdbdb;
	border-radius: 20px 20px 20px 20px;
	width: 18%;
	height: 50%;
}

#mypageUserBox2 {
	margin-top: 20%;
	text-decoration: none;
}

#mypageUserNickname {
	margin-top: 8%;
	font-weight: bold;
	font-size: 20px;
	line-height: 1.2;
	color: #292929;
	overflow-wrap: break-word;
	word-break: break-all;
}

#mypageUserBtn {
	margin-top: 8%;
	margin-bottom: 8%;
	width: 30%;
	border: 1px solid #dbdbdb;
	background-color: #00C892;
	border-radius: 4px;
	box-sizing: border-box;
	align-items: center;
	font-weight: 700;
	font-size: 13px;
	line-height: 22px;
}

hr {
	margin-top: 27%;
}

#asideDiv {
	display: block;
	font-size: 1.3em;
	margin-left: 38%;
	margin-top: -2em;
	margin-bottom: 0.6em;
	font-weight: bold;
	margin-top: 1%;
}

#asideDiv2 {
	display: block;
	font-size: 1.3em;
	margin-left: 38%;
	margin-top: -2em;
	margin-bottom: 0.6em;
	font-weight: bold;
	margin-top: 1%;
}

aside, #aside2 {
	border: 1px dashed #dbdbdb;
	display: block;
	width: 57%;
	border-radius: 10px 10px 10px 10px;
	height: 30%;
	margin-left: 35%;
}

#asideSpan1, #asideSpan2, #asideSpan3, #asideSpan4 {
	margin-left: 13%;
}

.mainLogo {
	font-family: 'Gugi', cursive;
	color: #111;
	font-size: 55px;
	text-decoration: none;
}
.user_Img {
	border-radius: 100%;
    width: 56%;
    height: auto;
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
footer {
	width: auto;
	height: auto;
	background: rgb(226, 226, 226);
}
</style>
</head>
<body>
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
								<a href="myPage?nickname=${session_nickName }" class="layout-navigation-bar-login__item">마이페이지</a>
								<!-- 회원가입 -->
								<!-- 로그인시 마이페이지 -->
								<!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
							</c:if>
						</div>
					</div>
				</div>
				<div class="canvas-open">
					<span class="icon_menu"> </span>
				</div>
			</div>
		</div>
		<div class="hs-nav">
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
								<input class="css_input_userInfo" type="text" id="search"
									name="search" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;search">
								<!-- 검색 -->
								<input class="fas fa-search fa-lg" id="searchButton" type="button" id="" onclick=""
									value="검색">
							</form>
						</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 마이페이지 네비게이션 -->
        <div id="myPageDiv" class="hs-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <nav class="nav-menu">
                            <ul>
                                <!-- 마이페이지 -->
								<li class="active"><a href="myPage?nickname=${session_nickName }">마이페이지</a></li>
								<!-- 홈 -->
								<li><a href="userInfoModify?s_id=${s_ID }">회원정보수정</a></li>
								<!-- 구매내역 -->
								<li><a href="buyDetails?s_id=${s_ID }">구매내역</a></li>
								<!-- 장바구니 -->
								<li><a href="cart?s_id=${s_ID }">장바구니</a></li>
								<!-- 시공문의내역 -->
								<li><a href="myInquiries?s_id=${s_ID }">문의내역</a></li>
								<!-- 판매자등록 -->
								<li><a href="companyRegistration">시공업체등록</a></li>
								<!-- 문의하기 -->
								<li><a href="serviceCenter">고객센터</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        </header>
    <!-- 마이페이지 네비게이션 끝 -->
    <section>
    	<div id="mypageUserBox"><!-- 마이페이지 유저시진 닉네임 박스 1 -->
    		<div id="mypageUserBox2"><!-- 마이페이지 유저시진 닉네임 박스 2 -->
    			<c:if test="${userVo eq null }">
                	<img class="user_Img" alt="userImg" src="../img/mypage/mypageImg.png">
	             </c:if>
	             <c:if test="${userVo ne null }">
	                <img class="user_Img" alt="userImg" src="userImg/${userVo.user_Main }">
	             </c:if>
	    			
    			<hr><!-- id기준 저장위치 및 파일명 등록 -->
    			<div id="mypageUserNickname"><!-- 마이페이지 유저시진 닉네임 박스 3 -->
    				<span>${session_nickName}</span>
					<div><!-- 마이페이지 유저시진 닉네임 박스 4 -->
						<input id="mypageUserBtn" type="button" value="정보수정" onclick="">
					</div>
    			</div>
    		</div>
    	</div>		
    </section>
    <!-- 고객문의 내역 -->
 	<div id="asideDiv">일반문의내역</div>
    <aside>
    	<table>
    		<c:if test="${Ulist!=null}">
    			<c:forEach items="${Ulist }" var="uIVo" end="2">
		    		<tr>
		    			<td>
		    				<span id="">${uIVo.reply_Check }</span>
		    			</td>
		    			<td>
		    				<span id="">${uIVo.ud_Title }</span>
		    			</td>
		    			<td>
		    				<span id="">${uIVo.user_Nickname }</span>
		    			</td>
		    			<td>
		    				<span id="">${uIVo.ud_Bdate }</span>
		    			</td>
		    		</tr>
    			</c:forEach>
	    	</c:if>
	    	<c:if test="${Ulist.size() == 0}">
	    		<tr>
	    			<td>
	    				<span>문의내역이 없습니다.</span>
	    			</td>
	    		</tr>
	    	</c:if>
    	</table>
    </aside>
    <!-- 고객문의 내역 끝 -->
    
    <!-- 시공문의 내역 -->
 	<div id="asideDiv">시공문의내역</div>
    <aside>
    	<table>
    		<c:if test="${Ilist!=null}">
    			<c:forEach items="${Ilist }" var="cIVo" end="2">
		    		<tr>
		    			<td>
		    				<span id="">${cIVo.reply_Check }</span>
		    			</td>
		    			<td>
		    				<span id="">${cIVo.cd_Title }</span>
		    			</td>
		    			<td>
		    				<span id="">${cIVo.user_Nickname }</span>
		    			</td>
		    			<td>
		    				<span id="asideSpan1">${cIVo.cd_Bdate }</span>
		    			</td>
		    		</tr>
    			</c:forEach>
	    	</c:if>
	    	<c:if test="${Ilist.size() == 0}">
	    		<tr>
	    			<td>
	    				<span>문의내역이 없습니다.</span>
	    			</td>
	    		</tr>
	    	</c:if>
    	</table>
    	
    </aside>
    <!-- 시공문의 내역 끝 -->
    
    <!-- 댓글 부분 -->
 	<div id="asideDiv2">작성댓글</div>
    <aside id="aside2">
    	<table>
    		<c:if test="${Elist!=null}">
	    		<c:forEach items="${Elist }" var="eLVo" end="2">
		    		<tr>
		    			<td>
		    				<span id="">${eLVo.event_no }</span>
		    			</td>
		    			<td>
		    				<span id="">${eLVo.event_content }</span>
		    			</td>
		    			<td>
		    				<span id="">${eLVo.user_nickname }</span>
		    			</td>
		    			<td>
		    				<span id="asideSpan1">${eLVo.event_date }</span>
		    			</td>
		    		</tr>
    			</c:forEach>
	    	</c:if>
	    	<c:if test="${Elist.size() == 0}">
	    		<tr>
	    			<td>
	    				<span>문의내역이 없습니다.</span>
	    			</td>
	    		</tr>
	    	</c:if>
    	</table>
    </aside>
    
    <!-- 댓글 부분 끝 -->
    		<!-- top -->
		<a
			style="display: scroll; position: fixed; bottom: 10px; right: 20px; cursor: pointer;"
			href="#" title="top"> <i class="fas fa-arrow-circle-up"
			style="width: 2em; height: 2em;"></i></a>
		<!-- top -->
	</body>
</html>