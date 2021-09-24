package com.site.p0823.service;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.user_InquiryVo;

public interface inquiresBoardService {

	//시공문의내역 가지고오기
	Construction_InquiryVo selcetInquiresOne(int cd_id);

	//시공문의 답변달기 
	void insertComInquiresSet(Construction_InquiryVo construction_InquiryVo);
	
	//일반문의내역 가지고오기
	user_InquiryVo selectUserInquiresOne(int ud_id);

	//일반문의 답변달기 
	void insertUserInquiresSet(user_InquiryVo user_InquiryVo);

}
