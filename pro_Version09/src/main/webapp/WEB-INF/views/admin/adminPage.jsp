<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공간, 관리자페이지</title>
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
	    		margin-top: 13%;
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
			.mainLogo {
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
	    	<span class="mainLogo"><a href="adminPage">공간</a></span>
	    	<span id="adminPageNickname"><!-- 관리자닉네임 -->${session_nickName } 입니다.</span><br>
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
	    <section>
	    	<span class="adminPageSpan"><img title="홈" alt="" src="../img/categories/furniture.png"></span>
			<span class="adminPageSpan"><img title="상품등록" alt="" src="../img/categories/appliances.png"></span>
			<span class="adminPageSpan"><img title="상품삭제" alt="" src="../img/categories/fabric.png"></span>
			<span class="adminPageSpan"><img title="시공업체삭제" alt="" src="../img/categories/dailySupplies.png"></span>
			<span class="adminPageSpan"><img title="문의내역" alt="" src="../img/categories/companionAnimal.png"></span>
		</section>
		<footer>
				© &nbsp;
				<a class="aTag" href="index">Project_Interior</a>
				<span>Leesangbum</span>
		</footer>
	</body>
</html>