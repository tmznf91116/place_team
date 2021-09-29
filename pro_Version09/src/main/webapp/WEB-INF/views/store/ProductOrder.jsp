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
   margin-top: 1%;
   margin-left: 30%;
}

hr {
   width: 80%;
}

footer {
   width: auto;
   height: auto;
   background: rgb(226, 226, 226);
}

.mainLogo {
   font-family: 'Gugi', cursive;
   color: #111;
   font-size: 55px;
}

h2 {
   margin-top: 1%;
   margin-bottom: 1%;
   display: block;
   font-size: 25px;
   font-weight: bold;
   color: rgb(41, 41, 41);
   word-break: keep-all;
}

.h2_test {
   margin-left: 20%;
   margin-bottom: 0.5%;
   display: block;
   font-weight: bold;
   word-break: keep-all;
   padding: 0.5%;
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
   margin-bottom: 5%;
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
   margin: 13px;
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
   width: 43%;
   margin-bottom: 1%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 4px;
   box-sizing: border-box;
   font-size: 15px;
   line-height: 2.3em;
   transition: border-color .1s, background-color .1s;
   resize: none;
   margin-top: 20px;
}

.css_input_userInfo_email5 {
   width: 41.5%;
   margin-bottom: 1%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 4px;
   box-sizing: border-box;
   font-size: 15px;
   line-height: 2.3em;
   transition: border-color .1s, background-color .1s;
   resize: none;
   margin-top: 20px;
}

.css_input_userInfo_email4 {
   width: 18.5%;
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

.registraionLable {
   text-align: left;
   font-size: 15px;
   font-weight: 700;
}

.div1 label {
   position: relative;
   width: 10%;
   text-align: left;
   color: #111;
}

.div2 {
   margin-left: 0%;
   margin-right: 50%;
   padding-top: 2%;
   margin-bottom: 3%;
}

.css_product_request {
   width: 47.3%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 4px;
   box-sizing: border-box;
   font-size: 15px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   border-bottom: #757575;
   height: 35px;
}

.css_productInsert_btn {
   width: 16%;
   padding: 8px 8px 8px 8px;
   border: 1px solid #dbdbdb;
   background-color: #00C892;
   border-radius: 4px;
   box-sizing: border-box;
   align-items: center;
   font-weight: 700;
   font-size: 15px;
   line-height: 18px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
}

.css_productInsert_btn2 {
   width: 15%;
   padding: 8px 8px 8px 8px;
   border: 1px solid #dbdbdb;
   background-color: #00C892;
   border-radius: 4px;
   box-sizing: border-box;
   align-items: center;
   font-weight: 700;
   font-size: 15px;
   line-height: 18px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
}

.css_product_select {
   width: 20%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 4px;
   box-sizing: border-box;
   font-size: 15px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   height: 40px;
}

.css_input_userInfo_email2 {
   width: 20%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 4px;
   box-sizing: border-box;
   font-size: 15px;
   line-height: 2.3em;
   transition: border-color .1s, background-color .1s;
   resize: none;
   margin: 8px;
}

.text_placehorder {
   width: 100px;
   color: #757575;
   font-size: 20px;
}

.text_placehorder2 {
   width: 100px;
   color: #757575;
   font-size: 20px;
   margin-left: -30%;
}

.tablebox_right {
   float: left;
   color: #757575;
}

.txtright {
   text-align: right;
   font-size: 20px;
}

table, th, td {
   /* border: #bcbcbc; */
   /* background-color: #F7F8FA; */
   width: 100px;
}

table {
   width: 850px;
   height: 40px;
}

th {
   /* background-color: #F7F8FA; */
   font-weight: bold;
}

.OrderPay {
   margin-left: -40%;
}

.OrderPay2 {
   margin-left: -40%;
}

.css_input_btn {
   width: 26%;
   margin-bottom: 5%;
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
   margin-left: -18%;
}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script>
   function openZipSearch() {

      new daum.Postcode({
         oncomplete : function(data) {
            $("#user_Address1").val(data.zonecode);
            $("#user_Address2").val(data.address);

         }
      }).open();
   }
</script>
<style type="text/css">
zipbtn {
   position:
}
</style>

<script type="text/javascript">
   function showfield(name) {
      if (name == 'Other')
         document.getElementById('div1').innerHTML = '<span class="registraionLable">직접 입력 : </span> <input type="text" class="css_input_userInfo_email3" name="other" />';
      else
         document.getElementById('div1').innerHTML = '';
   }
   function showfield2(name) {
      if (name == 'Other2')
         document.getElementById('div2').innerHTML = '<span class="registraionLable">직접 입력 : </span> <input type="text" class="css_input_userInfo_email5" name="other" />';
      else
         document.getElementById('div2').innerHTML = '';
   }
   
   
</script>

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
   <!-- headerEnd -->
   <div class="main_wrap">
      <section id="">
         <form action="ProductOrderCheck" method="post">
            <!-- 전체 묵음 div -->
            <div>
               <!-- 배송지 테이블 -->
               <div class="h2_test">
                  <h2 class="">배 송 지</h2>
                  <input type="button" class="css_productInsert_btn"
                     style="margin-left: 320px;" id="zipbtn" onclick="openZipSearch()"
                     value="주소검색" />
               </div>
               <div class="OrderDeliver">
                  <table>
                     <tr>
                        <div>
                           <span class="registraionLable">우편번호 : </span> <input
                              value="${user_DetailsVo.user_Address1 }" type="text"
                              id=user_Address1 placeholder="우편번호" name="user_Address1"
                              style="width: 620px; margin-left: 30px;"
                              class="css_input_userInfo_email"><br>
                        </div>
                        <div>
                           <span class="registraionLable">도로명주소 : </span> <input
                              value="${user_DetailsVo.user_Address2 }" type="text"
                              id="user_Address2" placeholder="기본 주소" name="user_Address2"
                              style="width: 620px;" class="css_input_userInfo_email" />
                        </div>
                        <div>
                           <span class="registraionLable">상세 주소 : </span> <input
                              value="${user_DetailsVo.user_Address3 }" type="text"
                              id="user_Address3" placeholder="상세 주소 " name="user_Address3"
                              style="width: 620px; margin-left: 25px;"
                              class="css_input_userInfo_email" />
                        </div>
                        <div>
                           <span class="registraionLable">수령인 이름 : </span> <input
                              value="${user_DetailsVo.user_Name }" type="text"
                              id="user_Name" placeholder="수령인 이름 " name="user_Name"
                              style="width: 620px;" class="css_input_userInfo_email" />
                        </div>
                        <select name="other" id="other"
                           onchange="showfield(this.options[this.selectedIndex].value)"
                           class="css_product_request">
                           <option selected="selected">배송시 요청사항을 선택해주세요</option>
                           <option value="부재시 문앞에 놓아주세요">부재시 문앞에 놓아주세요</option>
                           <option value="배송전에 미리 연락주세요">배송전에 미리 연락주세요</option>
                           <option value="부재시 경비실에 맡겨 주세요">부재시 경비실에 맡겨 주세요</option>
                           <option value="부재시 전화주시거나 문자 남겨주세요">부재시 전화주시거나 문자
                              남겨주세요</option>
                           <option value="Other">직접입력</option>
                        </select>
                        <div id="div1"></div>
                        <!-- <div class="registraionLable" >이도엽 010 - 8500 - 3249 <span class="registraionLable" >(기본배송지)</span></div> -->
                        <div class="div2" style="border-bottom: 1px solid #dbdbdb;"></div>
                     </tr>
                     <!-- 주문자 테이블 -->
                     <h2 class="h2_test">주 문 자</h2>
                     <tr>
                        <div>
                           <span class="registraionLable">이 름 : </span> <input type="text"
                              value="${user_DetailsVo.user_Name }" id="user_Name"
                              placeholder="이름" name="f_postal1"
                              style="width: 630px; margin-left: 33px;"
                              class="css_input_userInfo_email"><br>
                        </div>

                        <div>
                           <span class="registraionLable">이 메 일 : </span> <input
                              value="${mail }" class="css_input_userInfo_email4" type="text"
                              id="user_email" name="user_email" placeholder="이메일"
                              style="margin-left: 13px;"> &nbsp <span>@</span> &nbsp
                           <select name="travel_arriveVia" id="travel_arriveVia"
                              onchange="showfield2(this.options[this.selectedIndex].value)"
                              class="css_product_select">
                              <option selected="selected">${mail2 }</option>
                              <option value="naver.com">naver.com</option>
                              <option value="hanmail.net">hanmail.net</option>
                              <option value="daum.net">daum.net</option>
                              <option value="gmail.com">gmail.com</option>
                              <option value="nate.com">nate.com</option>
                              <option value="hotmail.com">hotmail.com</option>
                              <option value="outlook.com">outlook.com</option>
                              <option value="icloud.com">icloud.com</option>
                              <option value="Other2">직접입력</option>
                           </select>
                           <div id="div2"></div>
                        </div>

                        <div>
                           <span class="registraionLable">전화 번호 : </span> <input
                              value="${user_DetailsVo.user_Tel }" type="text" id="user_Tel"
                              placeholder="전화 번호 " name="user_Tel"
                              style="width: 630px; margin-left: 2px;"
                              class="css_input_userInfo_email" />
                        </div>
                     </tr>
                     <div class="div2" style="border-bottom: 1px solid #dbdbdb;"></div>
                  </table>
                  <h2 class="h2_test" style="margin-top: -5%;">주 문 상 품</h2>
                  <table style="margin-left: -2%;">
                     <tr>
                        <th class="text_placehorder" colspan="2">주식회사 : 공간 <b
                           class="tablebox_right">배송비 착불: 무료</b></th>
                     </tr>
                     <c:if test="${Cartlist == null }">
                        <tr>
                           <td rowspan="3" style="background-color: white;"><img
                              src="productImg/${productVo.product_Main }"></td>
                           <td class="" style="background-color: white;">${productVo.product_Name }</td>
                        </tr>
                        <tr>
                           <td style="background-color: white;">${onePrice2 }원 (1개)</td>
                        </tr>
                        <tr>
                           <td style="background-color: white;">총 ${count} 개 ${productVo.product_Price2 }원</td>
                        </tr>
                     </c:if>
                     <c:if test="${Cartlist != null }">
                        <c:forEach items="${Cartlist }" var="cart">
                           <tr>
                              <td rowspan="3" style="background-color: white;"><img
                                 src="productImg/${cart.product_Main }"></td>
                              <td class="" style="background-color: white;">${cart.product_Name }</td>
                           </tr>
                           <tr>
                              <td style="background-color: white;">${cart.product_Price3}원 (1개)
                              </td>
                           </tr>
                           <tr>
                              <td style="background-color: white;">총 ${cart.product_Num }
                                 개 ${cart.product_Price2 }원</td>
                           </tr>
                        </c:forEach>
                     </c:if>
                     
                  </table>

               </div>
               <!-- 결제금액 테이블 -->
               <br>
               <h2 class="h2_test">결제금액</h2>
               <div class="OrderPay2">

                  <table style="margin-left: 27%; width: 850px;">
                     <tr>
                        <td class="registraionLable" align="left">총 삼품 금액</td>
                        <td class="txtright"><b>${All_price2}원</b></td>
                     </tr>
                     <tr>
                        <td class="registraionLable">배송비</td>
                        <td class="txtright">0원</td>
                     </tr>
                     <tr>
                        <td class="registraionLable">쿠폰사용</td>
                        <td class="txtright">0원</td>
                     </tr>
                     <tr>
                        <td class="registraionLable">포인트 사용</td>
                        <td class="txtright">0원</td>
                     </tr>

                  </table>
                  <br> <br>
                  <div style="margin-left: 50%;">
                     <!-- <button type="submit" value="결제하기" class="css_input_btn" onclick="">결제하기</button> -->
                     <button type="button" value="결제하기" class="css_input_btn"
                        onclick="payBtn(${user_DetailsVo.user_Id },${count },${productVo.product_Number },${All_price })">결제하기</button>
                  </div>
               </div>
               <!-- 결제금액 테이블  끝-->
            </div>
            <!-- 배송지 테이블 끝-->

         </form>
      </section>

      <script type="text/javascript">
      
      
      //상품결제
      function payBtn(s_id,count,product_Number,All_price){
         $.ajax({
            url:'ProductOrderCheck',
            dataType:'post',
            data:{  
               "s_id":s_id,
               "count":count,
               "product_Number":product_Number,
               "All_price":All_price,
               "user_Name":$("#user_Name").val(),            
               "user_Address1":$("#user_Address1").val(),      
               "user_Address2":$("#user_Address2").val(),               
               "user_Address3":$("#user_Address3").val(),
               "user_Tel":$("#user_Tel").val(),
               "other":$("#other").val()
            },
            success:function(data){
               //alert("test");
            } ,
            error:function(error){
               //alert("error");
            }
         });
         
         $.ajax({
            url:'kakaoPay' ,
            data:{  
               "s_id":s_id,
               "count":count,
               "product_Number":product_Number,
               "All_price":All_price
            },
            dataType:'json' ,
            success:function(data){
               //alert(data.next_redirect_pc_url);
               var url = data.next_redirect_pc_url;
               window.open(url, 'width: 500, height: 650');
            } ,
            error:function(error){
               alert(error);
            }
         });
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
   </div>
</body>
</html>