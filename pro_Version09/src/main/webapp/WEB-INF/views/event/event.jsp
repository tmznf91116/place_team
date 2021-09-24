<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><!-- 문자열 자르기 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	<!-- 날짜 비교 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 날짜 비교 -->
<!DOCTYPE html>
<html>
<head>
<title>이벤트</title>
<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="../css/nice-select.css" type="text/css">
<link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../css/style.css" type="text/css">
<link rel="stylesheet" href="../css/event/event3.css" type="text/css">
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<!-- <link rel="stylesheet" href="../css/event/event.css" type="text/css">
<link rel="stylesheet" href="../css/event/event2.css" type="text/css">
<link rel="stylesheet" href="../css/event/event3.css" type="text/css"> -->
<!-- icon script 링크 -->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style type="text/css">
body {
	width: 0 auto;
	height: 0 auto;
}
img {
	text-align: center;
	border-radius: 20px;
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

#search {
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

#mainSection {
	text-align: center;
	width: 100%;
}

.main_wrap {
	margin-top: 148px;
}

header {
	position: fixed;
	width: 100%;
	margin-top: -148px;
	z-index: 99999;
	background-color: rgb(251, 251, 251);
	border-bottom: 1px solid #dbdbdb;
}

.imgHover {
	overflow: hidden;
	border-radius: 20px/20px;
	display: block;
	position: static;
	width: 100%;
	height: 16%;
}

.imgHover img {
	transition: all 0.4s linear;
}

.imgHover:hover img {
	transform: scale(1.2);
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
		<div class="om-widget">
			<!-- 창이 작아졌을때 메뉴버튼 내부버튼 -->
		</div>
		<div class="om-social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-youtube-play"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a> <a href="#"><i
				class="fa fa-pinterest-p"></i></a>
		</div>
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
	<div class="main_wrap">
	<%-- <c:set var="StartDate" value="${eventListVo.event_Period}"/>
	<c:set var="EndDate" value="${eventListVo.event_Period}"/>
	<jsp:useBean id="now" class="java.util.Date" />
	<fmt:parseDate value="${fn:substring(StartDate,1,8) }" pattern="yy/MM/dd" var="startDate" />
	<fmt:parseDate value="${fn:substring(EndDate,10,8) }" pattern="yy/MM/dd" var="endDate" />
	
	<fmt:formatDate value="${now}" pattern="yy/MM/dd" var="nowDate" /><!-- 오늘날짜 -->
	<fmt:formatDate value="${startDate}" pattern="yy/MM/dd" var="openDate"/><!-- 시작날짜 -->
	<fmt:formatDate value="${endDate}" pattern="yy/MM/dd" var="closeDate"/><!-- 마감날짜 -->
	
		<li>${eventListVo.event_Period}</li> --%>
				
		<div class="layout">
			<div class="competition-feed container">
				<ol class="competition-feed__list row">
				<c:forEach items="${list}" var="list">
				
				<jsp:useBean id="now" class="java.util.Date" />
				<fmt:formatDate value="${now}" pattern="yy/MM/dd" var="nowDate" />  
					<oi class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
						<a class="competition-item" href="eventDetail?event_id=${list.event_id} ">
							<div class="competition-item__image-wrap">
								<img class="competition-item__image" src="img/event/${list.event_Main}">
							</div>
			                <fmt:parseDate var="endDate" value="${fn:substring(list.event_Period,9,17) }" pattern="yy/MM/dd" />
			                <c:if test="${nowDate < fn:substring(list.event_Period,9,17) }">
								<div class="competition-item__footer">
								<div class="competition-item__footer__date">${list.event_Period}</div>
									<div class="competition-item__footer__state competition-item__footer__state--doing">진행중 </div>
								</div>
							</c:if>
			                <fmt:parseDate var="endDate" value="${fn:substring(list.event_Period,9,17) }" pattern="yy/MM/dd" />
							<c:if test="${nowDate > fn:substring(list.event_Period,9,17) }">
								<div class="competition-item__footer">
								<div class="competition-item__footer__date">${list.event_Period}</div>
     								<div class="competition-item__footer__state">종료</div>
								</div>
							</c:if>
						</a>
					</oi>
				</c:forEach>
				</ol>
			</div>
		</div>
				
		<%-- <div class="layout">
			<div class="competition-feed container">
				<ul class="competition-feed__list row">
				<c:forEach items="${list }" var="list">
					<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
						<a class="competition-item" href="eventDetail?event_id=${list.eventid} ">
							<div class="competition-item__image-wrap">
								<img class="competition-item__image" src="img/event/${list.event_Main}">
							</div>
							<div class="competition-item__footer">
								<div class="competition-item__footer__date">${list.event_Period}</div>
								<div class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
							</div></a></li>
				</c:forEach> --%>
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
	</div>
</body>
</html>