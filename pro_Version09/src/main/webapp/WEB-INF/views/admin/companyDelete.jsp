<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	    	
	    	#adminPageNickname{
	    		float: right;
	    		margin-right: 3%;
	    		margin-top: 1%;
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
			.companyDeleteLabel{
				margin-top: 1%;
			    display: block;
			    font-size: 15px;
			    font-weight: bold;
			    color: rgb(41, 41, 41);
		    	word-break: keep-all;
			}
			.css_companyDelete_input{
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
			.css_companyDelete_btn{
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
				text-align: center;
				margin-left: 13%;
			}
			table {
				text-align: center;
				margin-left: 30%;
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
	    
	    	function companyAllList() {
	    		//alert("test");
	    		$.ajax({
	    			url:"/companyAllList",
	    			type:"post",
	    			data:{  
	    				deletecompanyName:$("#deletecompanyName").val()
	    			},
	    			success:function(list){  
	    				
	    				var listsize = list;
	    				var html="";
	    			  	//alert("listsize");
	    				
	    			  	for(i in listsize){
	    			  		
	    			  		html += '<form action="companyModfiy"><input type="hidden" name="ccNum" value="'+list[i].cc_Id+'">';
	    			  		html += '<tr><td><span>업체번호 : </span><span>'+list[i].cc_Id+'</span></td>';
	    			  		html += '<td><span>회사이름 : </span><span>'+list[i].cc_Cname+'</span></td>';
	    			  		html += '<td><span>담당자 : </span><span><input type="text" id="'+list[i].cc_Pname+'" name="pname" value="'+list[i].cc_Pname+'"></span></td>';
	    			  		html += '<td><span><input type="submit" value="수정" onclick=""></span></td>';
	    			  		html += '<td><span><input type="button" value="삭제" onclick="companyDeleteOne('+list[i].cc_Id+')"></span></td></tr></form>';
	    			  		
	    			  		
	    			  		/* html += '<form action="companyModfiy"><input type="hidden" name="ccNum" value="'+list[i].cc_Id+'">';
	    			  		html += ' <span>업체번호 : '+list[i].cc_Id+' </span>&nbsp;|&nbsp;<span>회사이름 : '+list[i].cc_Cname+'</span>&nbsp;|&nbsp; ';
	    			  		html += ' <span>담당자 : <input type="text" name="pname" id="'+list[i].cc_Pname+'" value="'+list[i].cc_Pname+'"></span>&nbsp;|&nbsp; ';
	    			  		html += ' <span><input type="submit" value="수정" onclick=""></span></span>&nbsp; | &nbsp;';
	    			  		html += ' <span><input type="button" value="삭제" onclick="companyDeleteOne('+list[i].cc_Id+')"></span><p/></form> '; */
	    			  	}
	    			  	
	    				 $(".listprint").html(html);
	    			},
	    			error:function(){  
	    				alert("error");
	    			}
	    		});
	    	}
	    
			function companyDeleteOne(compan_Number){
	    		
	    		location.href = 'companyDeleteOne?ccNum='+compan_Number;
	    		alert(compan_Number+"번 업체가 삭제 되었습니다.")
	    	}
	    	
	    </script> 
	    <section>
	    	<h2>시공업체삭제</h2>
	    	<form action="">
		    	<label class="companyDeleteLabel">삭제할 업체명</label><br>
		    	<input class="css_companyDelete_input" type="text" id="deletecompanyName" name="deletecompanyName"><p/>
		    	<input class="css_companyDelete_btn" type="button" value="검색" onclick="companyAllList()">
	    	</form>
	    </section>
	    <!-- 검색리스트출력 -->
	    	<table>
				<tbody class="listprint">
					
				</tbody>    	
	    	</table>
	    <!-- 검색리스트출력 -->
		
	</body>
</html>