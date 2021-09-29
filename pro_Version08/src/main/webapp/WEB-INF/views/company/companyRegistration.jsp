<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<html>
<head>
<meta charset="UTF-8">
<title>공간, 시공업체등록 | 아파트 | 단독주택 | 빌라 | 원룸</title>
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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script>
	function openZipSearch() {
		new daum.Postcode({
			oncomplete : function(data) {
				$("#cc_Address1").val(data.zonecode);
				$("#cc_Address2").val(data.address);
			}
		}).open();
	}
</script>

<style type="text/css">
body {
	background-color: #FAFAFA;
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

section {
	width: 80%;
	text-align: center;
	margin-top: 1%;
	margin-left: 10%;
}

hr {
	width: 80%;
}

footer {
	text-align: center;
	color: black;
	margin-top: 15%;
	font-size: 12px;
}

.mainLogo {
	font-family: 'Gugi', cursive;
	color: #111;
	font-size: 55px;
}

h2 {
	text-align: center;
	margin-top: 1%;
	margin-bottom: 3%;
	display: block;
	font-size: 25px;
	font-weight: bold;
	color: rgb(41, 41, 41);
	word-break: keep-all;
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

#cartForm span {
	box-sizing: content-box;
	margin-right: 3%;
}

#cartSection {
	text-align: center;
	width: 100%;
	height: auto;
	border: 1px dashed #dbdbdb;
	border-radius: 20px 20px 20px 20px;
}

.css_input_btn {
	width: 26%;
	margin-bottom: 1%;
	padding: 8px 8px 8px 8px;
	border: 1px solid #dbdbdb;
	background-color: #00C892;
	border-radius: 4px;
	box-sizing: border-box;
	align-items: center;
	font-weight: 700;
	font-size: 15px;
	line-height: 40px;
	transition: border-color .1s, background-color .1s;
	resize: none;
	-webkit-appearance: none;
}

.css_input_btn2 {
	width: 26%;
	padding: 8px 8px 8px 8px;
	border: 1px solid #dbdbdb;
	background-color: #00C892;
	border-radius: 4px;
	box-sizing: border-box;
	align-items: center;
	font-weight: 700;
	font-size: 15px;
	line-height: 40px;
	transition: border-color .1s, background-color .1s;
	resize: none;
	-webkit-appearance: none;
}

#cartSectionText {
	color: #757575;
	font-weight: 700;
}

#registrationUl {
	text-align: left;
	margin-left: 28%;
	font-size: 14px;
}

.registraionLable {
	text-align: left;
	font-size: 15px;
	font-weight: 700;
}

.registraionLable2 {
	text-align: left;
	margin-left: 8.5%;
	font-size: 15px;
	font-weight: 700;
}

.css_input_userInfo_email {
	width: 11.5%;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	line-height: 2.3em;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.css_input_userInfo_email2 {
	width: 37%;
	margin-bottom: 1%;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	line-height: 2.3em;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.css_input_userInfo_email3 {
	width: 18%;
	margin-bottom: 1%;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	line-height: 2.3em;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.css_input_userInfo {
	width: 26%;
	padding: 1%; 1%; 1%;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.css_input_userInfo2 {
	width: 11.5%;
	height: 2.5em;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.css_input_userInfo3 {
	width: 17.2%;
	height: 2.5em;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.div1 label {
	position: relative;
	width: 10%;
	text-align: left;
	color: #111;
}

.div2 {
	margin-left: 26%;
	margin-bottom: 3%;
}

#input_file {
	margin-left: 7.5%;
}

.joinExample {
	color: grey;
	font-size: 12px;
	margin-bottom: 1%;
}

table {
	margin-bottom: 1%;
}

th {
	background-color: #dbdbdb;
}

table, th, td {
	border: 1px solid black;
	text-align: center;
	margin-left: 19%;
	margin-top: 3%;
	line-height: 2em;
}

#SMSCheck {
	text-align: center;
	margin-right: 11px;
}

#SMSLabel {
	text-align: left;
	width: 70%;
}

.labelStar {
	color: red;
}

#myPageDiv {
	border-top: 1px solid #ebebeb;
	text-align: center;
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
								<a href="myPage" class="layout-navigation-bar-login__item">마이페이지</a>
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
								<li><a href="myInquiries?s_id=${s_ID }">시공문의</a></li>
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
		<!-- 마이페이지 네비게이션 끝 -->
	</header>
	<div class="main_wrap">
	<section id="RegistrationSection">
		<form action="companyRegistration" method="post"
			id="companyRegistration" enctype="multipart/form-data">
			<div>
				<h2>판매자입점신청</h2>
			</div>
			<div style="border-bottom: 1px solid #dbdbdb;">
				<ul id="registrationUl">
					<li>작성해주신 정보를 바탕으로 카테고리별 담당 MD가 입점을 검토하여 이메일을 드립니다.</li>
					<br>
					<li>입점 불가에 대한 통보는 불가 사유와 함께 이메일로 보내드립니다. 회신을 주셔도 답변이 불가한 점 양해
						부탁드립니다.</li>
					<br>
					<li>사업자가 이미 등록되어 있어 입점 신청이 불가한 경우 space@gmail.com으로 이메일을
						보내주세요.</li>
					<br>
					<li>입점 신청과 관련된 내용은 일반 고객센터 접수가 불가능합니다. 참고 바랍니다.</li>
					<br>
				</ul>
			</div>
			<div>
				<h4 style="font-weight: 600; margin: 2%; color: #757575;">회사 정보
				</h4>
			</div>
			<div class="div1" style="border-bottom: 1px solid #dbdbdb;">
				<span> <label class="registraionLable">회사 이름<span
						class="labelStar">&nbsp;*</span></label>
				</span> <span> <input class="css_input_userInfo_email2" type="text"
					id="cc_Cname" name="cc_Cname" placeholder="">
				</span>
				<p />
				<span> <label class="registraionLable">사업자 등록번호<span
						class="labelStar">&nbsp;*</span></label>
				</span> <span> <input class="css_input_userInfo_email" type="text"
					id="cc_Nember" name="cc_Nember" placeholder=""><span>&nbsp;-&nbsp;</span>
					<input class="css_input_userInfo_email" type="text" id="cc_Nember2"
					name="cc_Nember2"><span>&nbsp;-&nbsp;</span> <input
					class="css_input_userInfo_email" type="text" id="cc_Nember3"
					name="cc_Nember3">
				</span>
				<p />
				<span> <label class="registraionLable">홈페이지</label>
				</span> <span> <input class="css_input_userInfo_email2" type="text"
					id="cc_Home" name="cc_Home" placeholder="">
				</span>
				<p />
			</div>
			<div>
				<h4 style="font-weight: 600; margin: 2%; color: #757575;">회사 주소
				</h4>
			</div>
			<div class="div1" style="border-bottom: 1px solid #dbdbdb;">
				<span> <label class="registraionLable">우편번호<span
						class="labelStar">&nbsp;*</span></label>
				</span> <span> <input class="css_input_userInfo_email2" type="text"
					id="cc_Address1" name="cc_Address1" placeholder="우편번호" readonly>
				</span>
				<p />
				<span> <label class="registraionLable">주소<span
						class="labelStar">&nbsp;*</span></label>
				</span> <span> <input class="css_input_userInfo_email2" type="text"
					id="cc_Address2" name="cc_Address2" placeholder="주소" readonly>
				</span>
				<p />
				<span> <label class="registraionLable">상세주소<span
						class="labelStar">&nbsp;*</span></label>
				</span> <span> <input class="css_input_userInfo_email2" type="text"
					id="cc_Address3" name="cc_Address3" placeholder="상세주소">
				</span>
				<p />
				<span><input class="css_input_btn2" type="button"
					onclick="openZipSearch()" value="주소찾기"></span>
			</div>
			<div>
				<h4 style="font-weight: 600; margin: 2%; color: #757575;">영업담당자
					정보</h4>
			</div>
			<div class="div1" style="border-bottom: 1px solid #dbdbdb;">
				<span> <label class="registraionLable">이름<span
						class="labelStar">&nbsp;*</span></label>
				</span> <span> <input class="css_input_userInfo_email2" type="text"
					id="cc_Pname" name="cc_Pname" placeholder="">
				</span>
				<p />
				<span> <label class="registraionLable">전화번호<span
						class="labelStar">&nbsp;*</span></label>
				</span> <span> <select class="css_input_userInfo2" name="cc_Tel"
					id="cc_Tel">
						<option value="010" selected>010</option>
						<option value="011">011</option>
						<option value="02">02</option>
						<option value="032">032</option>
						<option value="_manual">직접입력</option>
				</select><span>&nbsp;-&nbsp;</span> <input class="css_input_userInfo_email"
					type="text" id="cc_Tel1" name="cc_Tel1"><span>&nbsp;-&nbsp;</span>
					<input class="css_input_userInfo_email" type="text" id="cc_Tel2"
					name="cc_Tel2">
				</span>
				<p />
				<span> <label id="email" class="registraionLable">이메일<span
						class="labelStar">&nbsp;*</span></label>
				</span> <span> <input class="css_input_userInfo_email3" type="text"
					id="cc_Mail" name="cc_Mail" placeholder="이메일"> <span>@</span>
					<select class="css_input_userInfo3" name="emailsb" id="emailsb">
						<option value="naver.com" disabled="" selected>선택해주세요</option>
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
						<option value="nate.com">nate.com</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="outlook.com">outlook.com</option>
						<option value="icloud.com">icloud.com</option>
						<option value="_manual">직접입력</option>
				</select>
				</span>
				<p />
			</div>
			<div>
				<h4 style="font-weight: 600; margin: 2%; color: #757575;">상세 정보</h4>
			</div>
			<div class="div1" style="border-bottom: 1px solid #dbdbdb;">
				<span> <label class="registraionLable2">취급카테고리<span
						class="labelStar">&nbsp;*</span></label>
				</span> <span> <input type="checkbox" id="apt"
					name="interiorCategory" value="아파트"><label for="apt">아파트</label>
					<input type="checkbox" id="house" name="interiorCategory"
					value="단독주택"><label for="house">단독주택</label> <input
					type="checkbox" id="villa" name="interiorCategory" value="빌라"><label
					for="villa">빌라</label> <input type="checkbox" id="singleRoom"
					name="interiorCategory" value="원룸"><label for="singleRoom">원룸</label>
				</span>
				<p />
				<span> <label class="registraionLable">업체소개</label>
				</span> <span> <input class="css_input_userInfo_email2" type="text"
					id="cc_Introduction" name="cc_Introduction" placeholder="">
				</span>
				<div>
					<span> <label class="registraionLable" id="">업체관련사진<span
							class="labelStar">&nbsp;*</span></label>
					</span> <span> <input type="file" id="input_file" name="Main">
					</span>
					<p />
				</div>
			</div>
			<div>
				<h4 style="font-weight: 600; margin: 2%; color: #757575;">개인정보수집
					및 이용동의</h4>
			</div>
			<div class="div1" style="border-bottom: 1px solid #dbdbdb;">
				<span class="joinExample"> ㈜버킷플레이스는 개인정보보호법, 정보통신망 이용촉진 및
					정보보호 등에 관한 법률 등 관련 법령상의 개인정보보호 규정을 준수하며, 판매자님이 입점신청 시 필요한 최소한의 개인
					정보를 수집합니다. </span>
				<table>
					<tr>
						<th>목적</th>
						<th>항목</th>
						<th>보유기간</th>
					</tr>
					<tr>
						<td>판매자 식별, 입점 검토, 공지사항의 전달</td>
						<td>영업담당자의 이름/전화번호/이메일</td>
						<td>입점 처리기간이 종료되는 시점</td>
					</tr>
				</table>
				<div class="div2">
					<input type="checkbox" id="SMSCheck" name=""><label
						id="SMSLabel" for="SMSCheck">입점신청을 위한 개인정보 수집 및 이용에 동의<span
						style="color: #00C892; font-weight: 700;">(필수)</span></label>
				</div>
				<input type="hidden" name="user_Id" value="${s_ID }"> <input
					class="css_input_btn" type="submit" id="" name="" onclick=""
					value="입점신청 완료">
			</div>
		</form>
	</section>
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