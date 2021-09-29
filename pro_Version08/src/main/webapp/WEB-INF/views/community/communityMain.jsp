<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Aler Template">
<meta name="keywords" content="Aler, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">



<title>공간, 현명한 인테리어</title>
<!-- Google Font -->
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
<link rel="stylesheet" href="css/store.css" type="text/css">
<link rel="stylesheet" href="css/store2.css" type="text/css">





<style type="text/css">
/*글쓰기,좋아요,댓글 css 관련 시작*/
		.heart {
		  width: 100px;
		  height: 100px;
		  background: url("https://cssanimation.rocks/images/posts/steps/heart.png") no-repeat;
		  background-position: 0 0;
		  cursor: pointer;
		  transition: background-position 1s steps(28);
		  transition-duration: 0s;
		  float: right;
    	  margin: 24px;}
		  
		.is-active {
		    transition-duration: 1s;
		    background-position: -2800px 0;
		  }
		}
		
		.placement {
		  position: fixed;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		} 
		.heart2 {
		  width: 100px;
		  height: 100px;
		  background: url("https://cssanimation.rocks/images/posts/steps/heart.png") no-repeat;
		  background-position: 0 0;
		  cursor: pointer;
		  transition: background-position 1s steps(28);
		  transition-duration: 0s;
		  float: right;
    	  margin: 24px;}
		  
		.is-active {
		    transition-duration: 1s;
		    background-position: -2800px 0;
		  }
		}
		
		.placement {
		  position: fixed;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		}
		
		.heart3 {
		  width: 100px;
		  height: 100px;
		  background: url("https://cssanimation.rocks/images/posts/steps/heart.png") no-repeat;
		  background-position: 0 0;
		  cursor: pointer;
		  transition: background-position 1s steps(28);
		  transition-duration: 0s;
		  float: right;
    	  margin: 24px;}
		  
		.is-active {
		    transition-duration: 1s;
		    background-position: -2800px 0;
		  }
		}
		
		.placement {
		  position: fixed;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		}
		/*하트 끝*/
		.property-comments-span{
			font-size: xx-large;
			width: 100px;
		    float: right;
		    margin: 50px;
		}
		/* 사진 하단 닉네임,제목 표현 css */		
		.pi-title{text-align: center;}
		.pi-nick{color: rgb(53, 197, 240);}
		.pi-text-title{font-size: 20px;
				    font-family: "Montserrat", sans-serif;
				    font-weight: 700;
		}		
		.cwrite{width: 54%; 
   			 	text-align: right;}	
		.cwrite2{
			    padding: 11px 45px 12px;
			    background-color: rgb(53, 197, 240);
			    color: white;
			    font-size: 16px;
			    font-weight: 700;
			    /* line-height: 22px; */
			    border-radius: 12px;}
		/*글쓰기,좋아요,댓글 css 관련 끝*/
header {
	position: fixed;
	width: 100%;
	margin-top: -148px;
	z-index: 99999;
	background-color: rgb(251, 251, 251);
	border-bottom: 1px solid #dbdbdb;
}
.main_wrap {
	margin-top: 148px;
}
#mainimage>img {
	text-align: center;
	border-radius: 20px;
}

.fp-slider owl-carousel owl-loaded owl-drag {
	-webkit-box-direction: normal;
	-webkit-box-orient: horizontal;
	flex-direction: row;
	-webkit-box-pack: end;
	justify-content: flex-end;
	-webkit-box-align: end;
	align-items: flex-end;
}

.property-like-comments{
	text-align: -webkit-center;
    height: 100px;
    border-bottom: ridge;}
.property-item .pi-pic {
	margin: auto;
}

.css_input_btn {
   width: 15%;
   padding: 8px 8px 8px 8px;
   border: 1px solid #dbdbdb;
   background-color: #00C892;
   border-radius: 20px/20px;
   box-sizing: border-box;
   align-items: center;
   font-weight: 700;
   font-size: 15px;
   line-height: 21px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
}
.event-menu {
	text-align: center;
	width: auto;
}

#event-menu-img {
	border-radius: 20px/20px;
	max-width: 100%;
	height: auto;
}

.pi-pic set-bg>img {
	border-radius: 20px/20px;
}

#mainimage {
	text-align: center;
	margin-left: 10%;
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
			<a href="index"> <img src="img/logo.png" alt="logo">
			</a>
		</div>
		<div id="mobile-menu-wrap"></div>
		<div class="om-widget">
			<a href="#" class="hw-btn">Submit property</a>
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
									placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;search">
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
	<div class="main_wrap"></div>
	<!-- 메인페이지 상단이미지1 -->
	<section id="mainSection" class="feature-property-section spad">
		<div class="fp-slider owl-carousel">
			<!-- 메인상단 이미지 추가 공간 -->
			<div id="mainimage" class="fp-item set-bg">
				<img class="competition-item__image" src="img/event/event1.png">
			</div>
			<div id="mainimage" class="fp-item set-bg">
				<img class="competition-item__image" src="img/event/event2.png">
			</div>
			<div id="mainimage" class="fp-item set-bg">
				<img class="competition-item__image" src="img/event/event3.png">
			</div>
			<div id="mainimage" class="fp-item set-bg">
				<img class="competition-item__image" src="img/event/event4.png">
			</div>
			<!-- 메인상단 이미지 추가 공간 -->
		</div>
	</section>
	<!-- 메인페이지 상단이미지 -->

	
	<!-- Property Section Begin -->
	<section class="property-section latest-property-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-5">
					<div class="section-title">
						<h4 class="menu-category">오늘의 스토리</h4>
					</div>
					<div style="margin-bottom: 3%;">
						<span class="cwrite"><!-- col-lg-7 -->                    	
			                <a href="communityWrite" class="communitywrite"><button class="css_input_btn">글쓰기</button></a>                                    
			            </span>
		            </div>
				</div>
			</div>
			
			<div class="row property-filter">
			
			
			<!-- 포문 시작부분  -->
			<c:forEach items="${Clist }" var="Clist">
			
				<div class="col-lg-4 col-md-6 mix all furniture">
	                    <div class="property-item">
		                    <a href="communityDetails?com_Num=${Clist.com_Num } ">
		                    	<div class="imgHover">
		                    		<img class="pi-pic set-bg" alt="" src="communityImg/${Clist.com_Img1 }" style="width: 100%;">              
			                    </div>
		                    </a>
	                     	<div class="property-like-comments">
							<div class="placement">
							  <div class="heart"></div>
							</div>

	                        	<a href="communityDetails?com_Num=${Clist.com_Num }#comment1-head-id"><span class="property-comments-span" title="댓글"><i class="fas fa-comments"></i></span></a> 
	                       	</div>
		                        <div class="pi-text">	                     
		                           <a href="communityDetails"><p class="pi-nick">${Clist.user_Nickname }</p></a>		                                                       
		                        </div>
		                        <div class="pi-title">
		                           <h5 class="pi-text-title">${Clist.com_Title }</h5>
		                        </div>
	                     </div>
	                </div>
			
			</c:forEach>
				
				
				<!-- <div class="col-lg-4 col-md-6 mix all furniture">
	                    <div class="property-item">                
	                    	<a href="communityDetails">
	                    		<div class="pi-pic set-bg" data-setbg="images/community/cbody2.jpg"></div>
	                        </a>
	                        <div class="property-like-comments">
							<div class="placement">
							  <div class="heart2"></div>
							</div>	
	                        	<a href="communityDetails#comment1-head-id"><span class="property-comments-span" title="댓글"><i class="fas fa-comments"></i></span></a> 
	                       	</div>
		                        
		                        <div class="pi-text">	                     
		                           	<a href="communityDetails"><p class="pi-nick">안젤라랄라(닉네임)</p></a>
		                        </div>
		                        <div class="pi-title">
		                        	<h5 class="pi-text-title">오래도록 편안하게,자연스러운 주택살이</h5>
		                        </div>    		                            	                           
	                     </div>
	                </div> 
				
				<div class="col-lg-4 col-md-6 mix all appliances">
	                    <div class="property-item">
	                    	<a href="communityDetails">
       							<div class="pi-pic set-bg" data-setbg="images/community/cbody3.jpg"></div>
       						</a>
	                        <div class="property-like-comments">
							<div class="placement">
							  <div class="heart3"></div>
							</div>	
	                        	<a href="communityDetails#comment1-head-id"><span class="property-comments-span" title="댓글"><i class="fas fa-comments"></i></span></a> 
	                       	</div>
	                        <div class="pi-text">	                            
	                           <a href="communityDetails"><p class="pi-nick">songsong(닉네임)</p></a>	                            
	                        </div>
	                        <div class="pi-title">
	                           <h5 class="pi-text-title">반셀프로 완성한 30평대 신혼집</h5>	                           
	                        </div>    	                           
	                    </div>
	                </div> -->

			</div>
		</div>
	</section>
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	<script type="text/javascript">
	$(function() {
		  $(".heart").on("click", function() {
		    $(this).toggleClass("is-active");
		  });
		});
	$(function() {
		  $(".heart2").on("click", function() {
		    $(this).toggleClass("is-active");
		  });
		});
	$(function() {
		  $(".heart3").on("click", function() {
		    $(this).toggleClass("is-active");
		  });
		});
	
	</script>
	
	<!-- Property Section End -->
			<!-- top -->
		<a
			style="display: scroll; position: fixed; bottom: 10px; right: 20px; cursor: pointer;"
			href="#" title="top"> <i class="fas fa-arrow-circle-up"
			style="width: 2em; height: 2em;"></i></a>
		<!-- top -->
	<!-- Footer Section Begin -->
	<footer>
		<pre style="color: rgb(107, 107, 107); font-size: 0.7em; text-align: left;">
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