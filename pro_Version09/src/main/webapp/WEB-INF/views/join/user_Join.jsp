<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인테리어 소품 및 시공 | 회원가입</title>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
   rel="stylesheet">
   <!-- icon script 링크 -->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style type="text/css">
body {
   width: auto;
   height: auto;
   text-align: center;
   background-color: #FAFAFA;
}

.css_input_userInfo {
   text-align: left;
   width: 26%;
   padding: 1% 1% 1%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 4px;
   box-sizing: border-box;
   font-size: 15px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
}

.css_input_userInfo_email {
   width: 12%;
   padding: 1% 1% 1%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 4px;
   box-sizing: border-box;
   font-size: 15px;
   transition: border-color .1s, background-color .1s;
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

#clause {
   display: table;
   margin-left: 37%;
   margin-right: 0px auto;
   border: 1px solid grey;
   width: 26%;
   background-color: rgb(255, 255, 255);
}

.joinUserInfo {
   margin-top: 1%;
   display: block;
   font-size: 15px;
   font-weight: bold;
   color: rgb(41, 41, 41);
   word-break: keep-all;
}

.joinExample {
   color: grey;
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
.text_add{
   color: red;
   font-size: 13px;   
}
footer {
   width: auto;
   height: auto;
   background: rgb(226, 226, 226);
}
</style>


<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
   /* cechkbox부분 */
   $(document).ready(function() {
       $('input[type="checkbox"][name="clause"]').click(function(){
        if($("#clauseAll").prop('checked')){
           $('input[type="checkbox"][name="clause"]').prop('checked',true);
           $(this).prop('checked',true);
          }
       
        });
            /* if(!$(this).prop('checked',false)){
             alert("필수항목을 체크해주세요");
          }   */
       
       });/* cechkbox부분 */   
   
        function memberJoinForm(){
          /* alert("테스트");
          alert($("#user_pw").val()); */
             
          var idresult =$("#user_email").val(); //id 값
          var passresult = $("#user_pw").val(); //password값
          var repassresult = $("#pw2").val(); //password확인값
          
          var nicknameresult = $("#user_nickname").val(); //닉네임값
             
          //var checked =/^[a-z A-Z 0-9\-_]+@[a-z A-Z 0-9\-]+(\.[a-z A-Z 0-9 \-]+)+$/;  */
          var checked =/^[a-zA-Z0-9_]{4,12}$/;  
          var passchecked = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,12}$/;  
          // 비밀번호 조건문 : 영문,숫자, 8글자 이상   
          /*html 추가 소스  */
         var idAdd = document.getElementById("add_text");
         var pwAdd = document.getElementById("add_text_pw");
         var pwAdd2 = document.getElementById("add_text_pw2");
         var nicknameAdd = document.getElementById("add_text_nickname");
         
         if (!idresult) {
              idAdd.innerHTML = "필수 정보입니다.<br>";
                 return false;
              }else if (!/^[a-zA-Z0-9_]{4,20}$/.test(idresult)) {
                 idAdd.innerHTML = "영문자 4~20자리 이하로 입력하셔야 합니다.";
                 return false;
              }/*html 추가 소스 id */
          
         if (!passresult) {
            pwAdd.innerHTML = "필수 정보입니다.";
                 return false;
              }else if (!/^(?=.*[a-zA-Z])(?=.*[0-9]).{8,12}$/.test(passresult)) {
                 pwAdd.innerHTML = "비밀번호는 영문,숫자 조합으로 8글자 이상이어야 합니다.";
                 return false;
              }/*html 추가 소스 pw */
          
         if (!repassresult) {
            pwAdd2.innerHTML = "필수 정보입니다.";
                 return false;
              }else if (!/^(?=.*[a-zA-Z])(?=.*[0-9]).{8,12}$/.test(repassresult)) {
                 pwAdd2.innerHTML = "비밀번호는 영문,숫자 조합으로 8글자 이상이어야 합니다.";
                 return false;
              }/*html 추가 소스 pwcheck */
              
         if (!nicknameresult) {
            nicknameAdd.innerHTML = "필수 정보입니다.";
                 return false;
              }/*html 추가 소스 nicknam */
          
          
          if($("#user_email").val()== ""){
                alert("아이디를 입력해주세요.");
                $("#user_email").focus(); //아이디입력공간에 포커스 잡아줌
                return false; //form submit 막음
               }
             
               if(!checked.test(idresult)){ //아이디가 조건에 맞지 않으면
                alert("아이디는 이메일형식 이어야 합니다."); //경고문 출력
                $("#user_email").focus(); //아이디입력공간에 포커스 잡아줌
                return false; //form submit 막음
                }

               if($("#user_pw").val() == ""){
                   alert("비밀번호를 입력해주세요.");
                   $("#user_pw").focus(); //아이디입력공간에 포커스 잡아줌
                   return false; //form submit 막음
                }
               
               if(!passchecked.test(passresult)){ // 비밀번호가 조건에 맞지 않으면
                alert("비밀번호는 영문,숫자 조합으로 8글자 이상이어야 합니다.")
                $("#user_pw").focus(); //비밀번호 입력공간에 포커싱
                return false; //form submit 막음  
                }
               
               if($("#pw2").val() == ""){
                   alert("비밀번호확인을 입력해주세요.");
                   $("#pw2").focus(); //아이디입력공간에 포커스 잡아줌
                   return false; //form submit 막음
                }
               
              if(passresult != repassresult){
                alert("비밀번호가 일치하지 않습니다.");
                $("#user_pw").val("");
                $("#pw2").val("");
                $("#user_pw").focus();
                return false;
                }
              if($("#user_nickname").val() == ""){
                   alert("닉네임을 입력해주세요.");
                   $("#user_nickname").focus(); //아이디입력공간에 포커스 잡아줌
                   return false; //form submit 막음
                   
                   
              }if(!$("#clauseAge").prop("checked")){
               alert("만 14세 이상입니다 필수 항목을 체크해주세요");
              }else if(!$("#clauseUse").prop("checked")){
               alert("이용약관 필수 항목을 체크해주세요");

              }else if(!$("#clauseInfo").prop("checked")){
               alert("개인정보 이용동의 필수 항목을 체크해주세요");

              }
              
              else{
                  $("#joinForm").submit(); 
              }
       }//function
       //이메일 인증 버튼 클릭시 버튼 전환
       //넘어오는 데이터를 받을 변수
       var pwCode = "";
       function emailCheck(){
          var html = "";
         $("#sss").html(html);
          $("#emailCheckDiv").append('<span id="emailCheckBtn"><input type="text" class="css_input_userInfo" id="pwCode" name="" placeholder="인증번호를 입력해주세요."><p/><input type="button" class="css_input_btn" value="인증하기" onclick="emailCheck2()"></span>');
          
          $.ajax({
            url:"emailCheck",
            type:"post",
            data:{  //넘길 데이터
               "user_email":$("#user_email").val(),
               "email2":$("#email2").val()
            },
            success:function(data){ //이메일 발송성공!
               alert("입력한 이메일로 이메일인증\n 비밀번호를 발송하였습니다.");
               pwCode = data;
            	
            },
            error:function(){  //실패시
               alert("error");
            }
                
            });//ajax 끝
         }
       
       //인증하기 버튼 클릭시 비교
       function emailCheck2(){
          if($("#pwCode").val() == pwCode){
             var html = "";
             $("#emailCheckBtn").html(html);
              $("#emailCheckDiv").append("<input type='button' class='css_input_btn' value='인증완료' style='background-color: #01f8ff'>");
          }else{
        	  alert("인증번호가 일치하지 않습니다.");
          }
       }
    </script>

</head>

<body>
   <header>
      <a href="index"><span class="mainLogo">공간</span></a>
      <p />
      <h2>회원가입</h2>
   </header>
   <form action="user_Join" method="post" id="joinForm">
      <label id="email" class="joinUserInfo">이메일</label><br>
          <input class="css_input_userInfo_email" type="text" id="user_email"
         name="user_email" placeholder="이메일"> <span>@</span> <select
         class="css_input_userInfo_email" name="email2" id="email2">
         <option value="" disabled="">선택해주세요</option>
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
      <p />
      <span id="add_text" class="text_add"></span>
      <span id="sss">
         <button class="css_input_btn" type="button" value="emailCheck" onclick="emailCheck()" id="emailCheck_btn" name="emailCheck_btn">이메일인증</button>
      </span>
      <div id="emailCheckDiv"></div>
      <label class="joinUserInfo">비밀번호</label> <span class="joinExample">영문,
         숫자를 포함한 8자 이상의 비밀번호를 입력해주세요.</span>
      <p />
      <input class="css_input_userInfo" type="password" id="user_pw"
         name="user_pw" placeholder="비밀번호">
      <p />
     <span id="add_text_pw" class="text_add"></span>
      <label class="joinUserInfo">비밀번호확인</label><br> <input
         class="css_input_userInfo" type="password" id="pw2" name="pw2"
         placeholder="비밀번호 확인">
      <p />
      <span id="add_text_pw2" class="text_add"></span>
      <label class="joinUserInfo">닉네임</label> 
      <span  class="joinExample"  >다른 유저와 겹치지 않는 별명을 입력해주세요.(2~15자)</span>
      <p />
      <input class="css_input_userInfo" type="text" id="user_nickname"
         name="user_nickname" placeholder="별명 (2~15자)">
      <p />
     <span id="add_text_nickname" class="text_add"></span>
      <label class="joinUserInfo">약관동의</label>
      <p />
      <div id="clause">
         <input type="checkbox" id="clauseAll" name="clause" value="clauseAll"><label
            for="">전체동의</label><br>
         <hr>
       <!--   <input type="checkbox" id="clauseAge" name="clause" value="clauseAge"> -->
         
         <input type="checkbox" id="clauseAge" name="clause" value="clauseAge" required="required">
         <label for="">만 14세 이상입니다.<span>(필수)</span></label><br> 
         <input type="checkbox" id="clauseUse" name="clause" value="clauseUse"  required="required">
         <label for="">이용약관<span>(필수)</span></label><br> 
         <input type="checkbox" id="clauseInfo" name="clause" value="clauseInfo"  required="required">
         <label for="">개인정보수집 및 이용동의<span>(필수)</span></label><br> 
         <input type="checkbox" id="clauseEvent" name="clause" value="1">
         <label for="">이벤트, 프로모션 알림 메일 및 SMS 수신<span>(선택)</span></label>
      </div>
      <p />
      <!-- <input class="css_input_btn" type="submit" value="회원가입하기" onclick="memberJoinForm()"> -->
      <button class="css_input_btn" type="button" value="회원가입하기" onclick="memberJoinForm()" id="join_btn" name="join_btn">회원가입하기</button>
   </form>
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