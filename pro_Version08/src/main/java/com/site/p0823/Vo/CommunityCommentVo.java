package com.site.p0823.Vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommunityCommentVo {


	    // 댓글번호 
	    private Integer comment_no;

	    // 내용 
	    private String comment_content;

	    // 날짜 
	    private Timestamp comment_date;

	    // 유저닉네임 
	    private String user_nickname;

	    // 커뮤니티 게시판 번호 
	    private Integer com_num;

		

		

		

		

	   
	
}//class
