package com.site.p0823.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVo {

    // 고객번호(고유) 
    private int user_id;

    // 아이디 
    private String user_email;

    // 비밀번호 
    private String user_pw;

    // 닉네임 
    private String user_nickname;

    // 수신동의 
    private int smsreceiptconsent;

    // 고객 사진 
    private String user_Main;
    
    
	public UserVo(String user_email, String user_pw, String user_nickname, int smsreceiptconsent) {
		super();
		this.user_email = user_email;
		this.user_pw = user_pw;
		this.user_nickname = user_nickname;
		this.smsreceiptconsent = smsreceiptconsent;
	}

	
	
	

    
}
