package com.site.p0823.Vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class user_InquiryVo {

	 // 고객번호(고유) 
    private Integer ud_Id;

    // 고객문의제목 
    private String ud_Title;

    // 고객문의내용 
    private String ud_Content;

    // 닉네임 
    private String user_Nickname;

    // 번호묶음 
    private Integer ud_Bgroup;

    // 고객문의답변 
    private Integer ud_Bstep;

    // 고객문의날짜 
    private Timestamp ud_Bdate;
    
    // 조회수 
    private Integer ud_Hit;
    
    //답변 현황
    private String reply_Check;
    
}
