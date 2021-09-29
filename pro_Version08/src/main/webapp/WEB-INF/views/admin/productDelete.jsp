<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공간, 상품삭제</title>
		<!-- Google Font -->
		<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
	    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
	    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap" rel="stylesheet">
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
				padding-top: 15%;
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
			.css_productDelete_btn{
				width: 15%;
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
	    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	    <script type="text/javascript">
	    	if(${modfiyCk==1}) alert("업데이트 되었습니다.");
	    
	    	function SearchSelect() {
	    		//alert("test");
	    		$.ajax({
	    			url:"/Searchlist",
	    			type:"post",
	    			data:{  
	    				deleteProductName:$("#deleteProductName").val()
	    			},
	    			success:function(list){  
	    				
	    				var listsize = list;
	    				var html="";
	    			  	//alert("listsize");
	    				
	    			  	for(i in listsize){
	    			  		html += '<form action="selectModfiy"><input type="hidden" name="deleteNum" value="'+list[i].product_Number+'">';
	    			  		html += ' <span>상품번호 : '+list[i].product_Number+' </span>&nbsp;|&nbsp;<span>상품명 : '+list[i].product_Name+'</span>&nbsp;|&nbsp; ';
	    			  		html += ' <span>상품가격 : <input type="text" name="ModfiyPrice" id="'+list[i].product_Price+'" value="'+list[i].product_Price+'"></span>&nbsp;|&nbsp; ';
	    			  		html += ' <span>재고 : <input type="text" name="ModfiyPriceStock" id="'+list[i].product_Stock+'" value="'+list[i].product_Stock+'"></span>&nbsp; | &nbsp; ';
	    			  		html += ' <span><input type="submit" value="수정" onclick="">&nbsp; | &nbsp;<input type="button" value="삭제" onclick="productDelete('+list[i].product_Number+')"></span><p/></form> ';
	    			  	
	    			  	}
	    			  	
	    				 $(".listprint").html(html);
	    			},
	    			error:function(){  
	    				alert("error");
	    			}
	    		});
	    	}
	    
	    	function productDelete(product_Number){
	    		
	    		location.href = 'selectDelete?deleteNum='+product_Number;
	    		alert(product_Number+"번 상품이 삭제 되었습니다.")
	    	}
	    </script> 
	    <section>
	    	<h2>상품삭제</h2>
	    	<form action="">
		    	<label class="productInsertLabel">삭제할 상품명</label><br>
		    	<input class="css_productInsert_input" type="text" id="deleteProductName" name="deleteProductName"><p/>
		    	<input class="css_productDelete_btn" type="button" value="검색" onclick="SearchSelect()">
	    	</form>
	    </section>
	    <!-- 검색리스트출력 -->
	    	<ul class="listprint">
	    			
	    	</ul>
	    <!-- 검색리스트출력 -->
		<footer>
				© &nbsp;
				<a class="aTag" href="index">Project_Interior</a>
				<span>Leesangbum</span>
		</footer>
	</body>
</html>