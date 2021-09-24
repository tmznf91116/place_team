package com.site.p0823.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.user_InquiryVo;

@Mapper
public interface inquiresBoardMapper {

	
	//시공문의내역 가지고오기
	Construction_InquiryVo selcetInquiresOne(@Param("cd_id") int cd_id);

	//시공문의 답변달기
	void insertComInquiresSet(@Param("InquiryVo") Construction_InquiryVo construction_InquiryVo, @Param("reply_Check")  String reply_Check);
	//답변이 달리면 자동 업대이트
	void updateComInquiresSet(@Param("InquiryVo") Construction_InquiryVo construction_InquiryVo, @Param("reply_Check")  String reply_Check);

	//일반문의내역 가지고오기
	user_InquiryVo selectUserInquiresOne(@Param("ud_id") int ud_id);

	//일만문의 답변달기
	void insertUserInquiresSet(@Param("InquiryVo") user_InquiryVo user_InquiryVo,@Param("reply_Check")  String reply_Check);
	//답변이 달리면 자동 업대이트
	void updateUserInquiresSet(@Param("InquiryVo") user_InquiryVo user_InquiryVo,@Param("reply_Check")  String reply_Check);
	
	
}//mapper
