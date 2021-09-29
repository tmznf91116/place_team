<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>공간, 이벤트 | 기간한정</title>
<!-- <link rel="stylesheet" href="css/event/eventDetail/eventDetail.css" type="text/css"> -->
<link rel="stylesheet" href="css/event/eventDetail/eventDetail2.css"
	type="text/css">
<!-- <link rel="stylesheet" href="css/event/eventDetail/eventDetail3.css" type="text/css"> -->
<link rel="stylesheet" href="css/event/eventDetail/eventDetail4.css"
	type="text/css">
	<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="css/style.css" type="text/css">
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
.contentPtag {
	text-align: center;
	font-size: 1.5em;
	color: #757575;
	font-weight: 700px;
	margin: 3%;
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
									placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;search">
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
	<div class="competition-page">
		<div>
			<p class="contentPtag">글쓴이<br><br><span style="color: #00C892;"><strong>${communityVo.user_Nickname }</strong></span></p>
		</div>
		<div>
			<h2 class="contentPtag">제목<br><br><span style="color: #00C892;"><strong>${communityVo.com_Title }</strong></span></h2>
		</div>
		<div>
			<img class="competition-page__image" alt=""	src="communityImg/${communityVo.com_Img1 }">
		</div>
		<div>
			<p class="contentPtag">${communityVo.com_Content1 }</p>
		</div>
		<div>
			<img class="competition-page__image" alt=""	src="communityImg/${communityVo.com_Img2 }">
		</div>
		<div>
			<p class="contentPtag">${communityVo.com_Content2 }</p>
		</div>
		<div>
			<img class="competition-page__image" alt=""	src="communityImg/${communityVo.com_Img3 }">
		</div>
		<div>
			<p class="contentPtag">${communityVo.com_Content3 }</p>
		</div>

		<!-- 댓글 시작 -->
		<div class="competition-page__comment">
			<section class="comment-feed">
				<h1 class="comment-feed__header">
					댓글&nbsp;<span class="comment-feed__header__count">${map.commentCount}</span>
				</h1>
				<!-- 댓글 입력창 시작 -->
				<form class="comment-feed__form">
					<div class="comment-feed__form__input">
						<div class="comment-feed__form__content">
							<div class="comment-content-input">
								<input
									class="comment-content-input__text comment-feed__form__content__text"
									placeholder="댓글을 남겨 보세요." id="community_content" name="community_content">
							</div>
						</div>
						<div class="comment-feed__form__actions">
							<!-- <input type="hidden" name="e_id"  value=""> -->
							<button class="comment-feed__form__submit" aria-label="등록"
								type="button" onclick="cCommentBtn()">등록</button>
						</div>
					</div>
				</form>
				<!-- 댓글 입력창 끝 -->
				<!-- 댓글 목록 시작 -->
				<div style="border: 1px dashed #dbdbdb; border-radius: 20px/20px;">
				<ul class="comment-feed__list">
					<li class="comment-feed__list__item">
						<article class="comment-feed__item">
							<p class="comment-feed__item__content" id="contentList">
								<c:forEach items="${map.list}" var="CCommentVo">
									<ul id='${CCommentVo.comment_no}' style="margin: 1%;">
										<li class="comment-feed__item__content__author__name"
											class="name" style="font-size: 15px;color: #424242; font-weight: 700; margin: 1%;">${CCommentVo.user_nickname }
											&nbsp;&nbsp;<span class="txt" style="font-size: 15px; color: #424242; font-weight: 500;">${CCommentVo.comment_content}</span>
											<br><br>
											<span style="font-size: 12px; color: #757575; font-weight: 500;">${CCommentVo.comment_date}&nbsp;&nbsp;&nbsp;&nbsp;</span>
											<!-- 자신이 쓴글인지 확인 -->
											<c:if test="${session_nickName == CCommentVo.user_nickname}">
												<span class="btn"> 
													<a onclick="commentModify('${CCommentVo.comment_no}','${CCommentVo.comment_content }',
													'${CCommentVo.comment_date}','${CCommentVo.user_nickname}','${CCommentVo.com_num}')" class="rebtn">수정</a> 
													<a onclick="commentDelete('${CCommentVo.comment_no}')" class="comment-feed__item__footer__reply-btn" class="rebtn">삭제&nbsp;</a>
												</span>
											</c:if>
											<span class="btn"><a class="comment-feed__item__footer__reply-btn" class="rerebtn">답글</a></span><p/>
										</li>
										
										
									</ul>
							</c:forEach>
						</article>
					</li>
				</ul>
				</div>
				<br>
			</section>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		//댓글등록
		function cCommentBtn() {
			
			if ($("#community_content").val().length <= 2) {
				alert("3글자 이상 입력하셔야 댓글을 등록할수 있습니다.");
				$("#community_content").val("");
				$("#community_content").focus();
				return false;
			}
		
			var s_nick = '${session_nickName}';
			if (s_nick == '') {
				if (confirm("댓글을 입력하시려면 로그인을 하셔야 합니다.\n 로그인페이지로 이동할까요?")) {
					location.href = "login";
				}
				return false;
			}
			
			$.ajax({
				url : "/communitycommentWrite",
				type : "post",
				data : {
					user_nickname : '${session_nickName}',
					com_num : '${param.com_Num}',
					comment_content : $("#community_content").val()
					
				},
				success : function(data) {
					
				   var html = "";
					
				   html += ' <ul id="'+data.Vo.comment_no+'" style="margin: 1%;"> ';
	               html += ' <li class="comment-feed__item__content__author__name" class="name" ';
	               html += ' style="font-size: 15px; color: #424242; font-weight: 700; margin: 1%;">'+data.Vo.user_nickname+' &nbsp;&nbsp; ';
	               html += ' <span class="txt" style="font-size: 15px; color: #424242; font-weight: 500;">'+data.Vo.comment_content+'</span> <br> ';
	               html += ' <span style="font-size: 12px; color: #757575; font-weight: 500;">'+data.Vo.comment_date+'&nbsp;&nbsp;&nbsp;&nbsp;</span> ';
	               html += '  ';
	               html += '  ';
	               html += ' <span class="btn"><a class="comment-feed__item__footer__reply-btn" class="rerebtn">답글</a></span> ';
	               html += ' <p /></li></ul> ';
					
					
					
					$("#contentList").prepend(html);
					$("#community_content").val("");
					/* $("#comRe").load(window.location.href + "#comRe");  */
				},
				error : function() { //실패시
					alert("error");
				}
			});
		}//cCommentBtn
		</script>
			<!-- top -->
		<a
			style="display: scroll; position: fixed; bottom: 10px; right: 20px; cursor: pointer; z-index: 99999;"
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