<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<link rel="stylesheet" href="css/store/store.css" type="text/css">
<link rel="stylesheet" href="css/store/store2.css" type="text/css">
<link rel="stylesheet" href="css/store/store3.css" type="text/css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style type="text/css">
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

footer {
   width: auto;
   height: auto;
   background: rgb(226, 226, 226);
}
</style>
<title>${productVo.product_Name }</title>

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
   <div class="main_wrap">

      <!-- 전체 페이지 공통 -->

      <hr class="layout" />
      <div id="wrap">
         <div id="container">
            <!--
    $category_page = /product/list.html
    $project_page = /product/project.html
    $jointbuy_page = /product/jointbuy.html
-->
            <div id="detail_inner">
               <div
                  class="xans-element- xans-product xans-product-headcategory path ">
                  <span>현재 위치</span>
                  <ol>
                     <li><a href="/">홈</a></li>
                     <li class=""><a href="/category/shop/42/">SHOP</a></li>
                     <li class=""><a href="/category/상세페이지/44/">상세페이지</a></li>
                     <li class="displaynone"><a href=""></a></li>
                     <li class="displaynone"><strong><a href=""></a></strong></li>
                  </ol>
               </div>

               <!-- 상단 제품 정보  -->
               <div
                  class="xans-element- xans-product xans-product-detail top_inner">
                  <div class="headingArea">
                     <!-- 공급사 바로가기버튼 영역 -->
                     <div class="supply displaynone">
                        <span></span> <a href="#none" onclick=""><img src=""
                           alt="공급사 바로가기" /></a>
                     </div>
                     <!-- //공급사 바로가기버튼 영역 -->
                  </div>
                  <div class="detailArea">
                     <!-- 이미지 영역 -->
                     <div
                        class="xans-element- xans-product xans-product-image imgArea ">
                        <div class="keyImg">
                           <div class="thumbnail">
                              <a href="#none" alt="P00000CJ"> <img
                                 src="productImg/${productVo.product_Main }"
                                 style="width: 100%;" alt="상세페이지 BigImage" class="BigImage " />
                              </a>
                           </div>
                        </div>

                        <!-- //참고 -->
                        <!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
                        <div class="color displaynone"></div>
                        <!-- //참고 -->
                     </div>
                     <!-- //이미지 영역 -->

                     <!-- 상세정보 내역 -->
                     <div class="infoArea soldout_displaynone">
                        <div class="product_title ">${productVo.product_Name }</div>


                        <div d-price="4500000.00" d-custom="${productVo.product_Price }"
                           class="custom_pro  "></div>

                        <div
                           class="xans-element- xans-product xans-product-detaildesign">
                           <!--
                    출력 갯수 지정 변수, 없으면 설정된 전체가 나옵니다.
                    count = 10
                -->
                           <div border="0" summary="">
                              <ul>
                                 <li style="display: none"
                                    class=" product_name_css xans-record-"><span
                                    class="title"><span
                                       style="font-size: 16px; color: #555555;"
                                       data-i18n=PRODUCT.PRD_INFO_PRODUCT_NAME>상품명</span></span> <span
                                    class="con"><span
                                       style="font-size: 16px; color: #555555;">[패키지] 백년가게
                                          상세페이지</span></span></li>
                                 <li class=" summary_desc_css xans-record-"><span
                                    class="title"><span
                                       style="font-size: 12px; color: #555555;"
                                       data-i18n=PRODUCT.PRD_INFO_SUMMARY_DESC>상품요약정보</span></span> <span
                                    class="con"><span
                                       style="font-size: 12px; color: #555555;">${productVo.product_Desc }</span></span>
                                 </li>

                                 <li class=" product_price_css xans-record-"><span
                                    class="title"><span
                                       style="font-size: 12px; color: #008BCC; font-weight: bold;"
                                       data-i18n=PRODUCT.PRD_INFO_PRODUCT_PRICE>판매가</span></span> <span
                                    class="con"><span
                                       style="font-size: 12px; color: #008BCC; font-weight: bold;"><strong
                                          id="span_product_price_text">${productVo.product_Price2 }원
                                       </strong><input id="product_price" name="product_price" value=""
                                          type="hidden" /></span></span></li>
                                 <li class=" delivery_title_css xans-record-"><span
                                    class="title"><span
                                       style="font-size: 12px; color: #555555;"
                                       data-i18n=PRODUCT.PRD_INFO_DELIVERY_TITLE>국내·해외배송</span></span> <span
                                    class="con"><span
                                       style="font-size: 12px; color: #555555;">국내배송</span></span></li>
                                 <li class=" delivery_css xans-record-"><span
                                    class="title"><span
                                       style="font-size: 12px; color: #555555;"
                                       data-i18n=PRODUCT.PRD_INFO_DELIVERY>배송방법</span></span> <span
                                    class="con"><span
                                       style="font-size: 12px; color: #555555;">택배</span></span></li>
                                 <li class=" delivery_price_css xans-record-"><span
                                    class="title"><span
                                       style="font-size: 12px; color: #555555;"
                                       data-i18n=PRODUCT.PRD_INFO_DELIVERY_PRICE>배송비</span></span> <span
                                    class="con"><span
                                       style="font-size: 12px; color: #555555;"><span
                                          class="delv_price_B"><input
                                             id="delivery_cost_prepaid" name="delivery_cost_prepaid"
                                             value="P" type="hidden" />무료</span></span></span></li>
                              </ul>
                           </div>
                        </div>

                        <!--<table border="0" summary="">
                <caption>SNS 상품홍보</caption>
                <tbody>
                    <tr class="displaynone">
                        <th scope="row">SNS 상품홍보</th>
                        <td class="social">  <ul module="product_customsns"><li></li></ul></td>
                    </tr>
                </tbody>
            </table>-->
                        <p class="displaynone">
                           <img
                              src="//img.echosting.cafe24.com/skin/base_ko_KR/product/txt_naver.gif"
                              alt="개인결제창을 통한 결제 시 네이버 마일리지 적립 및 사용이 가능합니다." />
                        </p>
                        <!-- //상세정보 내역 -->

                        <table border="0" summary=""
                           class="xans-element- xans-product xans-product-option xans-record-">
                           <caption>상품 옵션</caption>
                           <!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
                           <tbody></tbody>
                           <tbody>
                              <tr class="displaynone" id="">
                                 <td colspan="2" class="selectButton"><a href="#none"
                                    onclick=""><img
                                       src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_manual_select.gif"
                                       alt="옵션 선택" /></a></td>
                              </tr>
                           </tbody>
                           <!-- //참고 -->
                        </table>
                        <div class="guideArea ">
                           <span class="sizeGuide displaynone"><a href="#none"
                              class="size_guide_info" product_no="61">사이즈 가이드</a></span>
                        </div>

                        <!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
                        <!-- //참고 -->


                        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
                        <script type="text/javascript">
                     
                        var count = 1;
                        function QuantityUp(product_Number,product_Price) {
                           
                           
                           $.ajax({
                              url:"/QuantityUp",
                              type:"post",
                              data:{  
                                 "product_Number":product_Number,
                                 "product_Price":product_Price
                              },
                              success:function(data){  
                                 var html = " "; 
                                 var html2 = " "; 
                                 var html3 = " "; 
                                 
                                 html += '<tr>';
                                 html += '<td>'+data.product_Name+'</td>';
                                 html += '<td><span class="quantity">';
                                 html += '<input id="quantity1"name="quantity_opt[]" style="" value="'+(count+=1)+'" type="text" />';
                                 html += '<a href="#none">';
                                 html += '<img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="QuantityUp up" onclick="QuantityUp('+data.product_Number+','+data.product_Price+')"/></a>';
                                 html += '<a href="#none">';
                                 html += '<img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="QuantityDown down"  onclick="QuantityDown('+data.product_Number+','+data.product_Price+')" /></a>';
                                 html += '</span></td>';
                                 html += '<td class="right"><span class="quantity_price">'+data.product_Price2+'원</span>';
                                 html += '<span class="mileage displaynone"></span></td>';
                                 html += '</tr>';
                                 $(".productBox").html(html);
                                 
                                 
                                 html2 += '<strong>TOTAL</strong> : <span class="total"><strong><em>'+data.product_Price2+'</em></strong>';
                                 html2 += '('+count+'개)</span>';
                                 $("#totalPrice").html(html2);
                                 
                                 html3 += '<a href="ProductOrder?s_id='+${s_ID}+'&product_Number='+data.product_Number+'&count='+count+'" id="btnBuy" class="first dj-btn-1  ">';
                                 html3 += '<span style="color:white;">구매하기</span><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_reserve.gif" alt="예약주문" class="displaynone" id="btnReserve" /></a>';
                                 html3 += '';
                                 html3 += '<a href="javascript:void(0);" onclick="cartGO('+data.product_Number+','+${s_ID}+','+count+');" class="dj-btn-1-2 " >';
                                 //html3 += '<a href="cartGo?product_Number='+data.product_Number+'&s_id='+${s_ID}+'&count='+count+'" class="dj-btn-1-2 " >';
                                 html3 += '장바구니<img src="/_dj/img/infoArea_scroll_fixed_go_cart.png" alt="픽스장바구니아이콘" style="display: none" /></a>';
                                 
                                 $("#pay").html(html3);
                                 
                              },
                              error:function(){  
                                 alert("error");
                              }
                           });
                        }
                        
                        function QuantityDown(product_Number,product_Price) {
                           if(count<2){
                              location.href = "";
                           }
                           $.ajax({
                              url:"/QuantityDown",
                              type:"post",
                              data:{  
                                 "product_Number":product_Number,
                                 "product_Price":product_Price
                              },
                              success:function(data){  
                                 var html = " "; 
                                 var html2 = " "; 
                                 var html3 = " "; 
                                 
                                 html += '<tr>';
                                 html += '<td>'+data.product_Name+'</td>';
                                 html += '<td><span class="quantity">';
                                 html += '<input id="quantity1"name="quantity_opt[]" style="" value="'+(count-=1)+'" type="text" />';
                                 html += '<a href="#none">';
                                 html += '<img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="QuantityUp up" onclick="QuantityUp('+data.product_Number+','+data.product_Price+')"/></a>';
                                 html += '<a href="#none">';
                                 html += '<img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="QuantityDown down" onclick="QuantityDown('+data.product_Number+','+data.product_Price+')" /></a>';
                                 html += '</span></td>';
                                 html += '<td class="right"><span class="quantity_price">'+data.product_Price2+'원</span>';
                                 html += '<span class="mileage displaynone"></span></td>';
                                 html += '</tr>';
                                 $(".productBox").html(html);
                                 
                                 
                                 html2 += '<strong>TOTAL</strong> : <span class="total"><strong><em>'+data.product_Price2+'</em></strong>';
                                 html2 += '('+count+'개)</span>';
                                 $("#totalPrice").html(html2);
                                 
                                 
                                 html3 += '<a href="ProductOrder?s_id='+${s_ID}+'&product_Number='+data.product_Number+'&count='+count+'" id="btnBuy" class="first dj-btn-1  ">';
                                 html3 += '<span style="color:white;">구매하기</span><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_reserve.gif" alt="예약주문" class="displaynone" id="btnReserve" /></a>';
                                 html3 += '';
                                 html3 += '<a href="javascript:void(0);" onclick="cartGO('+data.product_Number+','+${s_ID}+','+count+');" class="dj-btn-1-2 " >';
                                 //html3 += '<a href="cartGo?product_Number='+data.product_Number+'&s_id='+${s_ID}+'&count='+count+'" class="dj-btn-1-2 " >';
                                 html3 += '장바구니<img src="/_dj/img/infoArea_scroll_fixed_go_cart.png" alt="픽스장바구니아이콘" style="display: none" /></a>';
                                 
                                 $("#pay").html(html3);
                                 
                              },
                              error:function(){  
                                 alert("error");
                              }
                           });
                        }
                        
                        function cartGO(product_Number,s_id,count) {
                           //alert("test");
                           $.ajax({
                              url:"/cartGo",
                              type:"post",
                              data:{  
                                 "product_Number":product_Number,
                                 "s_id":s_id,
                                 "count":count                                 
                              },
                              success:function(data){  
                                 if(confirm('장바구니로 이동하시겠습니까?')) {
                                    location.href="cart?s_id="+s_id;
                                   } else {
                                      return false;
                                     }
                                 /* alert("장바구니에 저장되었습니다."); */
                              },
                              error:function(){  
                                 alert("error");
                              }
                           });
                        }
                        

                     </script>
                        <!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
                        <div id="totalProducts" class=" ">
                           <table border="0" summary="">
                              <caption>상품 목록</caption>
                              <colgroup>
                                 <col style="width: 284px;" />
                                 <col style="width: 80px;" />
                                 <col style="width: 110px;" />
                              </colgroup>
                              <thead>
                                 <tr>
                                    <th scope="col">상품명</th>
                                    <th scope="col">상품수</th>
                                    <th scope="col">가격</th>
                                 </tr>
                              </thead>
                              <tbody class="productBox">
                                 <tr>
                                    <td>${productVo.product_Name }</td>
                                    <td><span class="quantity"> <input
                                          id="quantity1" name="quantity_opt[]" style="" value="1"
                                          type="text" />
                                           <a href="#none"> <img
                                             src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                                             alt="수량증가" class="QuantityUp up"
                                             onclick="QuantityUp(${productVo.product_Number},${productVo.product_Price})" /></a>
                                          <a href="#none"> <img
                                             src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                                             alt="수량감소" class="QuantityDown down"
                                             onclick="QuantityDown(${productVo.product_Number},${productVo.product_Price})" />
                                       </a>
                                    </span></td>
                                    <td class="right"><span class="quantity_price">${productVo.product_Price2 }원</span>
                                       <span class="mileage displaynone"></span></td>
                                 </tr>

                              </tbody>
                           </table>
                        </div>


                        <div id="totalPrice" class="totalPrice">
                           <strong>TOTAL</strong> : <span class="total"><strong><em>${productVo.product_Price2 }</em></strong>
                              (0개)</span>
                        </div>

                        <!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
                        <div class="xans-element- xans-product xans-product-action">
                           <div class="ec-base-button" id="pay">
                              <a href="ProductOrder?s_id=${s_ID }&product_Number=${productVo.product_Number }" id="btnBuy" class="first dj-btn-1  ">
                                 <span style="color: white;">구매하기</span><img
                                 src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_reserve.gif"
                                 alt="예약주문" class="displaynone" id="btnReserve" />
                              </a> <a href="javascript:void(0);"
                                 onclick="cartGO(${productVo.product_Number },${s_ID });"
                                 class="dj-btn-1-2 "> <%-- <a href="cartGo?product_Number=${productVo.product_Number }&s_id=${s_ID }" class="dj-btn-1-2 " > --%>
                                 장바구니<img src="/_dj/img/infoArea_scroll_fixed_go_cart.png"
                                 alt="픽스장바구니아이콘" style="display: none" /></a>

                           </div>
                        </div>
                        <!-- //참고 -->
                     </div>
                  </div>
                  <!-- 공급사:판매사정보 -->

                  <!-- //공급사:판매사정보 -->

                  <!-- //상단 제품 정보 -->
                  <!-- 관련상품 -->
                  <!--// 관련상품 -->
                  <!-- 상품상세정보 -->
                  <div style="overflow: hidden;" class="">
                     <div id="prdDetail" class="ec-base-tab_detail grid5">
                        <div class="tab_margin"></div>
                        <div class="detail_tap_inner">
                           <ul class="menu">
                              <li class="selected"><a href="#prdDetail">상품정보</a></li>
                              <li><a href="#prdInfo">구매정보</a></li>
                              <li><a href="#prdReview">상품후기 <span class="count">(0)</span></a></li>
                              <li><a href="#prdQnA">상품문의 <span class="count">(0)</span></a></li>
                           </ul>
                        </div>

                        <div class="xans-element- xans-product xans-product-detail ">
                           <div class="eventArea displaynone">
                              <div class="event"></div>
                           </div>
                        </div>



                        <div class="xans-element- xans-product xans-product-additional">
                           <div class="cont">
                              <p></p>
                              <div style="text-align: center;">
                                 <p>
                                    <img alt="" src="productImg/${productVo.product_Serve }"><br>
                                    <img alt="" src="images/sang2.jpg"><br> <img
                                       alt="" src="images/sang3.jpg"><br> <img alt=""
                                       src="images/sang4.jpg">
                                 <p>&nbsp;</p>
                                 <br>
                                 </p>
                                 <p></p>
                                 <p></p>
                                 <p></p>
                                 <p></p>
                                 <p></p>
                                 <p></p>
                              </div>
                              <p></p>
                           </div>
                           <!-- //상품상세정보 -->
                           <!-- 상품구매안내 -->
                           <div id="prdInfo" class="ec-base-tab_detail grid5 ">
                              <div class="tab_margin"></div>
                              <div class="detail_tap_inner">
                                 <ul class="menu">
                                    <li><a href="#prdDetail">상품정보</a></li>
                                    <li class="selected"><a href="#prdInfo">구매정보</a></li>
                                    <li><a href="#prdReview">상품후기 <span class="count">(0)</span></a></li>
                                    <li><a href="#prdQnA">상품문의 <span class="count">(0)</span></a></li>
                                 </ul>
                              </div>

                              <div class="cont_all">
                                 <ul>
                                    <li class="cont">
                                       <div class="cont_inner">
                                          <h3>상품결제정보</h3>
                                          &nbsp; <br> <br> &nbsp;<br> &nbsp; <br>
                                       </div>
                                    </li>
                                    <li class="cont">
                                       <div class="cont_inner">
                                          <h3>배송정보</h3>
                                          <ul class="delivery">
                                             <!-- <li>배송 방법 : 택배</li>
                <li>배송 지역 : 전국지역</li>
                <li>배송 비용 : 무료</li>
                <li>배송 기간 : 3일 ~ 7일</li>
                <li>배송 안내 : - 산간벽지나 도서지방은 별도의 추가금액을 지불하셔야 하는 경우가 있습니다.<br>
                고객님께서 주문하신 상품은 입금 확인후 배송해 드립니다. 다만, 상품종류에 따라서 상품의 배송이 다소 지연될 수 있습니다.<br>
            </li> -->
                                          </ul>
                                       </div>
                                    </li>
                                 </ul>
                                 <ul>
                                    <li class="cont" style="width: 100%">
                                       <div class="cont_inner">
                                          <h3>교환 및 반품정보</h3>
                                          <!--  <b>교환 및 반품 주소</b><br/>- [07806] 서울특별시 강서구 공항대로 220 (마곡동) 우성에스비타워Ⅱ3층<b><br/><br/>교환 및 반품이 가능한 경우</b><br>
                  - 상품을 공급 받으신 날로부터 7일이내 단, 가전제품의<br>
                  &nbsp;&nbsp;경우 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우에는 교환/반품이 불가능합니다.<br>
                  - 공급받으신 상품 및 용역의 내용이 표시.광고 내용과<br>
                  &nbsp;&nbsp;다르거나 다르게 이행된 경우에는 공급받은 날로부터 3월이내, 그사실을 알게 된 날로부터 30일이내<br>
                  <br>
                  
                  <b>교환 및 반품이 불가능한 경우</b><br>
                  - 고객님의 책임 있는 사유로 상품등이 멸실 또는 훼손된 경우. 단, 상품의 내용을 확인하기 위하여<br>
                  &nbsp;&nbsp;포장 등을 훼손한 경우는 제외<br>
                  - 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우<br>
                  &nbsp;&nbsp;(예 : 가전제품, 식품, 음반 등, 단 액정화면이 부착된 노트북, LCD모니터, 디지털 카메라 등의 불량화소에<br>
                  &nbsp;&nbsp;따른 반품/교환은 제조사 기준에 따릅니다.)<br>
                  - 고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우 단, 화장품등의 경우 시용제품을 <br>
                  &nbsp;&nbsp;제공한 경우에 한 합니다.<br>
                  - 시간의 경과에 의하여 재판매가 곤란할 정도로 상품등의 가치가 현저히 감소한 경우<br>
                  - 복제가 가능한 상품등의 포장을 훼손한 경우<br>
                  &nbsp;&nbsp;(자세한 내용은 고객만족센터 1:1 E-MAIL상담을 이용해 주시기 바랍니다.)<br>
                  <br>
                  ※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다.<br>
                  &nbsp;&nbsp;(색상 교환, 사이즈 교환 등 포함)<br> -->
                                       </div>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                           <!-- //상품구매안내 -->
                           <!-- 상품사용후기 -->
                           <div id="prdReview" class="ec-base-tab_detail grid5 ">
                              <div class="tab_margin"></div>
                              <div class="detail_tap_inner">
                                 <ul class="menu">
                                    <li><a href="#prdDetail">상품정보</a></li>
                                    <li><a href="#prdInfo">구매정보</a></li>
                                    <li class="selected"><a href="#prdReview">상품후기 <span
                                          class="count">(0)</span></a></li>
                                    <li><a href="#prdQnA">상품문의 <span class="count">(0)</span></a></li>
                                 </ul>
                              </div>



                              <div id="p_review" class="detail_p_r">

                                 <h2 class="title">REVIEW</h2>
                              </div>



                              <div class="board">
                                 <div class="ec-base-button typeBorder">
                                    <span class="gRight"> <a
                                       href="/board/product/write.html?board_no=4&product_no=61&cate_no=44&display_group=1"
                                       class="dj-btn-2">WRITE</a> <a
                                       href="/board/p_review/list.html?board_no=4"
                                       class="dj-btn-2">LIST</a>
                                    </span>
                                 </div>

                                 <p class="nodata" data-i18n="PRODUCT.BOARD_NODATA">게시물이
                                    없습니다</p>
                              </div>
                           </div>
                           <!-- //상품사용후기 -->
                           <!-- 상품 Q&A -->
                           <div id="prdQnA" class="ec-base-tab_detail grid5 ">
                              <div class="tab_margin"></div>
                              <div class="detail_tap_inner">
                                 <ul class="menu">
                                    <li><a href="#prdDetail">상품정보</a></li>
                                    <li><a href="#prdInfo">구매정보</a></li>
                                    <li><a href="#prdReview">상품후기 <span class="count">(0)</span></a></li>
                                    <li class="selected"><a href="#prdQnA">상품문의 <span
                                          class="count">(0)</span></a></li>
                                 </ul>
                              </div>


                              <div class="board">
                                 <div class="ec-base-button typeBorder">
                                    <span><h3>Q &amp; A</h3></span> <span class="gRight">
                                       <a
                                       href="/board/product/write.html?board_no=6&product_no=61&cate_no=44&display_group=1"
                                       class="dj-btn-2">WRITE</a> <a
                                       href="/board/product/list.html?board_no=6" class="dj-btn-2">LIST</a>
                                    </span>
                                 </div>
                                 <p class="nodata" data-i18n="PRODUCT.BOARD_NODATA">게시물이
                                    없습니다</p>

                              </div>
                              <!-- //상품Q&A -->



                           </div>



                        </div>

                     </div>
                  </div>
               </div>
            </div>

         </div>
      </div>
      <!-- div wrap -->
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