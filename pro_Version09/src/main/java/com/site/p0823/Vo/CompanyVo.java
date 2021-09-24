package com.site.p0823.Vo;


import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.Data;

// 시공업체 
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CompanyVo {

	    // 업체번호 
	    private Integer cc_Id;

	    // 회사이름 
	    private String cc_Cname;

	    // 사업자번호 
	    private String cc_Nember;

	    // 업페홈페이지 
	    private String cc_Home;

	    // 업체담당자 
	    private String cc_Pname;

	    // 업체전화번호 
	    private String cc_Tel;

	    // 업체메일 
	    private String cc_Mail;

	    // 업체카테고리 
	    private String cc_Categories;

	    // 메인사진 
	    private String cc_Main;

	    // 업체소게글 
	    private String cc_Introduction;

	    // 업체주소1 (우편)
	    private String cc_Address1;

	    // 업체주소2 (주소)
	    private String cc_Address2;

	    // 업체주소2 (상세)
	    private String cc_Address3;
	    
	    // 고객번호(고유) 
	    private Integer user_Id;
	
}
