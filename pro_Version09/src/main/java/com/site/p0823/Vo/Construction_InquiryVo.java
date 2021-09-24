package com.site.p0823.Vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//시공문의 
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Construction_InquiryVo {


	    // 시공문의번호 
	    private Integer cd_Id;

	    // 시공문의제목 
	    private String cd_Title;

	    // 시공문의내용 
	    private String cd_Content;

	    // 시공문의회사 
	    private String cd_Company;

	    // 닉네임 
	    private String user_Nickname;

	    // 번호묶음 
	    private Integer cd_Bgroup;

	    // 시공문의답변 
	    private Integer cd_Bstep;

	    // 시공문의날짜 
	    private Timestamp cd_Bdate;

	    // 조회수 
	    private Integer cd_Bhit;
	    
	    //답변 현황
	    private String reply_Check;

	    
}//class
