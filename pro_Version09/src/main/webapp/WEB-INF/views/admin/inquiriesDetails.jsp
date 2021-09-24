<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공간, 문의내역 | 시공문의</title>
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
	    		margin-top: 1%;
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
			.navBar{
				margin-left: 3%;
				margin-right: 3%;
			}
	    	footer{
				color: black;
				margin-top: 15%;
				font-size: 12px;
			}
			#categoryName{
				margin-top: 3%;
			}
			.aTag{
				text-decoration: none;
				color: black;
			}
			table{
				text-align: center;
				margin: auto;
				width: 80%;
				border-spacing: 10px;
				border-collapse: collapse;
			}
			.table_th {
				width: 300px;
				padding-top: 1%;
				padding-bottom: 1%;
				font-size: 17px;
			    font-weight: bold;
			    color: rgb(41, 41, 41);
			}
			.table_td {
				width: 300px;
				padding-top: 1%;
				padding-bottom: 1%;
				font-size: 15px;
			    color: rgb(41, 41, 41);
			}
			hr{
				width: 80%;
			}
			thead{
				border-top: 0.2px solid;
				border-bottom: 0.2px solid;
				border-color: gray;
			}
			.page-num {
                margin-top: 15px;
			}
			
			.page-num oi {
			    width: 36px;
			    height: 35px;
			}
			.num {
			  position: relative;
			  top: -10px;
			  height: 33px !important;
			  margin-left: 5px;
			  margin-right: 5px;
			  border: none;
			}
			.num > span {
			  font-weight: bold;
			  font-size: 17px;
			  position: relative;
			  top: -2px;
			  color: #757575;
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
				color: #00C892;
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
					<oi class="navBar"><a class="aTag" href="index">사용자페이지</a></oi>
					<oi class="navBar"><a class="aTag" href="productInsert">상품등록</a></oi>
					<oi class="navBar"><a class="aTag" href="productDelete">상품삭제</a></oi>
					<oi class="navBar"><a class="aTag" href="companyDelete">시공업체삭제</a></oi>
					<oi class="navBar"><a class="aTag" href="officerDelivery">배송관리</a></oi>
					<oi class="navBar"><a class="aTag" href="inquiriesDetails">문의내역</a></oi>
				</ul>
			</div>
	    	<hr>
	    </header>
	    <section>
	    		<a href="inquiriesDetails2"><h4>일반문의 현황 가기</h4></a>
	    	<table>
	    		 <h2>시공문의 현황</h2>
	    		<thead>
	    			<tr>
	    				<th class="table_th">답변현황</th>
	    				<th class="table_th">제목</th>
	    				<th class="table_th">작성자</th>
	    				<th class="table_th">작성일</th>
	    			</tr>
	    		</thead>
	    		<tbody>
	    		<!-- for문############################################## -->
		    		<c:forEach items="${map.list }" var="IVo" >
		    			<tr>
		    				<td class="table_td">${IVo.reply_Check}<!-- 번호 --></td>
		    				<td class="table_td"><c:if test="${IVo.cd_Bstep == 1}">▶</c:if><a href="InquiriesCompany?cd_id=${IVo.cd_Id}"><mark>${IVo.cd_Title}</mark></a><!-- 제목 --></td>
		    			
		    				<td class="table_td">${IVo.user_Nickname}<!-- 작성자 --></td>
		    				<td class="table_td">${IVo.cd_Bdate}<!-- 작성일 --></td>
		    			</tr>
		    		
		    		</c:forEach>
	    		</tbody>
	    		<!-- for문############################################## -->
	    	</table>
	    	
	    	<!-- 하단넘버링 -->
	    	<ol class="page-num">
	    	<!-- 첫페이지 이동 -->
			<c:if test="${map.page == 1 }">
				<oi class="first"><img src="../img/admin/pageNumLeft2.png"></oi>
			</c:if>
			<c:if test="${map.page != 1 }">
				<a href="inquiriesDetails?page=1"><oi class="first"><img src="../img/admin/pageNumLeft2.png"></oi></a>
			</c:if>
	    	
	    	<!-- 이전페이지 이동 -->
			<c:if test="${map.page == 1 }">
				<oi class="prev"><img src="../img/admin/pageNumLeft.png"></oi>
			</c:if>
			<c:if test="${map.page > 1 }">
				<a href="inquiriesDetails?page=${map.page-1}" ><oi class="prev"><img src="../img/admin/pageNumLeft.png"></oi></a>
			</c:if>
		      
		    <!-- 하단넘버링 -->  
			<c:forEach var="nowpage" begin="${map.startpage}" end="${map.endpage }">
				<c:if test="${map.page == nowpage }">
		        	<oi class="num"><span>${nowpage}</span></oi>
				</c:if>
				<c:if test="${map.page != nowpage }">
					<a href="inquiriesDetails?page=${nowpage  }"><oi class="num"><span>${nowpage}</span></oi></a>
				</c:if>
			</c:forEach>
		      
			<!-- 다음페이지 이동 -->
			<c:if test="${map.page < map.endpage }">
				<a href="inquiriesDetails?page=${map.page+1}"><oi class="next"><img src="../img/admin/pageNumRight.png"></oi></a>
			</c:if> 		      
			<c:if test="${map.page == map.endpage }">
				<oi class="next"><img src="../img/admin/pageNumRight.png"></oi>
			</c:if> 		      
		      
			<!-- 마지막페이지 이동 -->
		    <c:if test="${map.page != map.maxpage }"> 
				<a href="inquiriesDetails?page=${map.maxpage }"><oi class="last"><img src="../img/admin/pageNumRight2.png"></oi></a>
			</c:if>   
		    <c:if test="${map.page == map.maxpage }"> 
				<oi class="last"><img src="../img/admin/pageNumRight2.png"></oi>
			</c:if>   
		    </ol>
		    <!-- 하단넘버링 -->
	    </section>
	    
		<footer>
			© &nbsp;
			<a class="aTag" href="index">Project_Interior</a>
			<span>Leesangbum</span>
		</footer>
	</body>
</html>