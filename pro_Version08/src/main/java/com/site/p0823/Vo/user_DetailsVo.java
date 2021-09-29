package com.site.p0823.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class user_DetailsVo {
	// 회원 상세 

	    // 고객번호(고유) 
	    private Integer user_Id;

	    // 고객 전화번호 
	    private String user_Tel;

	    // 고객주소1(우편) 
	    private String user_Address1;

	    // 고객주소2(주소) 
	    private String user_Address2;

	    // 업체주소3(상세) 
	    private String user_Address3;

	    // 고객이름 
	    private String user_Name;

	    
	
}
