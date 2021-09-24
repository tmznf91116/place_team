package com.site.p0823.Vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class communityVo {

	 // 커뮤니티 번호 
    private Integer com_Num;

    // 커뮤니티 제목 
    private String com_Title;

    // 커뮤니티 사진1 
    private String com_Img1;

    // 커뮤니티 사진2 
    private String com_Img2;

    // 커뮤니티 사진3 
    private String com_Img3;

    // 커뮤니티 내용1 
    private String com_Content1;

    // 커뮤니티 내용2 
    private String com_Content2;

    // 커뮤니티 내용3 
    private String com_Content3;

    // 유저닉네임 
    private String user_Nickname;

    // 날짜 
    private Timestamp com_Date;

    // 조회수 
    private Integer com_Hit;
}
