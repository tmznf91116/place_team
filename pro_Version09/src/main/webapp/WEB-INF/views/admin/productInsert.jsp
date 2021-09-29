<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>공간, 상품등록</title>
		<!-- Google Font -->
		<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
	    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
	    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap" rel="stylesheet">
	    <!-- 페이지 상단 기본폼 -->
	    <!-- css  -->
	    <style type="text/css">
	    	body{
	    		text-align: center;
	    		background-color: #FAFAFA; 
	    	}
	    	
	    	#adminPageLogo{
				margin-left: 10%;
	    	}
	    	#adminPageNickname{
	    		float: right;
	    		margin-right: 3%;
	    		margin-top: 1%;
	    	}
	    	.adminPageSpan{
	    		padding: 3% 3% 0% 3%;
	    		border: none;
	    		box-sizing: border-box;
			    align-items: center;
	    		/* width: 100%;
	    		height: 100%;
	    		margin: 3%;
				padding: 3% 3% 3% 3%;
			    border: 1px solid #dbdbdb;
			    background-color: #00C892;
			    border-radius: 4px;
			    box-sizing: border-box;
			    align-items: center;
			    font-weight: 700;
			    font-size: 15px;
			    line-height: 21px;
			    transition: border-color .1s,background-color .1s;
			    resize: none;
			    -webkit-appearance: none; */
	    	}
	    	section{
	    		text-align: center;
	    		margin-top: 3%;
	    	}
			#adminPageCategory{
			    margin: 0;
			    font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
			    font-size: 1rem;
			    font-weight: 700;
			    line-height: 1.5;
			    color: #212529;
			    text-align: center;
			}
			oi {
				margin-left: 3%;
				margin-right: 3%;
			}
	    	footer{
				color: black;
				padding-top: 5%;
				font-size: 12px;
			}
			#categoryName{
				margin-top: 3%;
			}
			.aTag{
				text-decoration: none;
				color: black;
			}
			.productInsertLabel{
				margin-top: 1%;
			    display: block;
			    font-size: 15px;
			    font-weight: bold;
			    color: rgb(41, 41, 41);
		    	word-break: keep-all;
			}
			.productInsertLabel_radio{
				margin-top: 1%;
			    font-size: 12px;
			    color: gray;
		    	word-break: keep-all;
			}
			.css_productInsert_input{
				text-align: left;
			    width: 15%;
			    padding: 1em;
			    border: 1px solid #dbdbdb;
			    background-color: #fff;
			    border-radius: 4px;
			    box-sizing: border-box;
			    font-size: 12px;
			    transition: border-color .1s,background-color .1s;
			    resize: none;
			    -webkit-appearance: none;
			}
			.css_product_select{
				width: 15%;
			    padding: 1em;
			    border: 1px solid #dbdbdb;
			    background-color: #fff;
			    border-radius: 4px;
			    box-sizing: border-box;
			    font-size: 12px;
			    transition: border-color .1s,background-color .1s;
			    resize: none;
			}
			.css_productInsert_btn{
				width: 13%;
				padding: 8px 8px 8px 8px;
			    border: 1px solid #dbdbdb;
			    background-color: #00C892;
			    border-radius: 4px;
			    box-sizing: border-box;
			    align-items: center;
			    font-weight: 700;
			    font-size: 15px;
			    line-height: 21px;
			    transition: border-color .1s,background-color .1s;
			    resize: none;
			    -webkit-appearance: none;
			}
			h2 {
				margin-bottom: 2%;
			    display: block;
			    font-weight: bold;
			    color: rgb(41, 41, 41);
		    	word-break: keep-all;
			}
			.mainLogo{
				font-family: 'Gugi', cursive;
				color: #111;
				font-size: 55px;
				text-decoration: none;
				text-align: center;
				margin-left: 13%;
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
				color: black;
				text-decoration: none;
			}
	    </style>
	</head>
	<body>
	    <header>
	    	<a href="adminPage"><span class="mainLogo">공간</span></a>
	    	<span id="adminPageNickname"><!-- 관리자닉네임 -->${session_nickName} 입니다.</span><br>
	    	<div id="adminPageCategory">
				<ul>
					<oi><a class="aTag" href="index">사용자페이지</a></oi>
					<oi><a class="aTag" href="productInsert">상품등록</a></oi>
					<oi><a class="aTag" href="productDelete">상품삭제</a></oi>
					<oi><a class="aTag" href="companyDelete">시공업체삭제</a></oi>
					<oi><a class="aTag" href="officerDelivery">배송관리</a></oi>
					<oi><a class="aTag" href="inquiriesDetails">문의내역</a></oi>
				</ul>
			</div>
	    	<hr>
	    </header>
	    <!-- 페이지 상단 기본폼 -->
	    <section>
	    	<h2>상품등록</h2>
		    <form action="productInsert" method="post" enctype="multipart/form-data">
		    	<label class="productInsertLabel">카테고리</label><br>
		    	<select class="css_product_select" name="category_Code" id="category_Code">
		    		<option value="가구">가구</option>
		    		<option value="가전">가전</option>
		    		<option value="패브릭">패브릭</option>
		    		<option value="생활용품">생활용품</option>
		    		<option value="반려동물">반려동물</option>
		    	</select><p/>
		    	<label class="productInsertLabel">상품명</label><br>
		    	<input class="css_productInsert_input" type="text" id="product_Name" name="product_Name"><p/>
		    	<label class="productInsertLabel">수량</label><br>
		    	<input class="css_productInsert_input" type="text" id="product_Stock" name="product_Stock"><p/>
		    	<label class="productInsertLabel">브랜드</label><br>
		    	<input class="css_productInsert_input" type="text" id="product_Brand" name="product_Brand"><p/>
		    	<label class="productInsertLabel">상품사진첨부</label><br>
		    	<input type="file" id="product_Main" name="Main"><p/>
		    	<label class="productInsertLabel">상품설명첨부(이미지)</label><br>
		    	<input type="file" id="product_Serve" name="Serve"><p/>
		    	<label class="productInsertLabel">상품설명첨부(글)</label><br>
		    	<input class="css_productInsert_input" type="text" id="product_Desc" name="product_Desc" placeholder="부가설명란,"><p/>
		    	<label class="productInsertLabel">판매가</label><br>
		    	<input class="css_productInsert_input" type="text" id="product_Price" name="product_Price"><p/>
		    	<label class="productInsertLabel">옵션사용여부</label><br>
		    	<input type="radio" id="Option_ok" name="product_Option" value="1"><label class="productInsertLabel_radio" for="use">사용</label>
		    	<input type="radio" id="Option_no" name="product_Option" value="0" checked><label class="productInsertLabel_radio" for="notUsed">미사용</label><p/>
		    	<label class="productInsertLabel">배송비</label> <span class="productInsertLabel_radio">기본 3,000원</span><p/>
		    	<input class="css_productInsert_btn" type="submit" value="등록하기" onclick="">&nbsp;
		    	<input class="css_productInsert_btn" type="reset" value="초기화">
	    	</form>
	    </section>
	    
		<footer>
				© &nbsp;
				<a class="aTag" href="index">Project_Interior</a>
				<span>Leesangbum</span>
		</footer>
	</body>
</html>