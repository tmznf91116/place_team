package com.site.p0823.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.user_InquiryVo;
import com.site.p0823.mapper.inquiresBoardMapper;

@Service
public class inquiresBoardServiceImpl implements inquiresBoardService {

	@Autowired
	inquiresBoardMapper inquiresBoardMapper;
	
	//시공문의내역 가지고오기
	@Override
	public Construction_InquiryVo selcetInquiresOne(int cd_id) {
		Construction_InquiryVo construction_InquiryVo = inquiresBoardMapper.selcetInquiresOne(cd_id);
		return construction_InquiryVo;
	}

	//시공문의 답변달기
	@Override
	public void insertComInquiresSet(Construction_InquiryVo construction_InquiryVo) {
		String reply_Check = "답변완료";
		//답변이 달리면 질문대기가 답변 완료로 변경 되어지는부분
		inquiresBoardMapper.updateComInquiresSet(construction_InquiryVo,reply_Check);
		//글이 하나 추가되는부분
		construction_InquiryVo.setCd_Id(construction_InquiryVo.getCd_Id()-1);
		inquiresBoardMapper.insertComInquiresSet(construction_InquiryVo,reply_Check);
	}

	//일반문의내역 가지고오기
	@Override
	public user_InquiryVo selectUserInquiresOne(int ud_id) {
		user_InquiryVo user_InquiryVo = inquiresBoardMapper.selectUserInquiresOne(ud_id);
		return user_InquiryVo;
	}
	//일만문의 답변달기
	@Override
	public void insertUserInquiresSet(user_InquiryVo user_InquiryVo) {
		String reply_Check = "답변완료";
		//답변이 달리면 질문대기가 답변 완료로 변경 되어지는부분
		inquiresBoardMapper.updateUserInquiresSet(user_InquiryVo,reply_Check);
		//글이 하나 추가되는부분
		user_InquiryVo.setUd_Id(user_InquiryVo.getUd_Id()-1);
		inquiresBoardMapper.insertUserInquiresSet(user_InquiryVo,reply_Check);
	}

	
	
}//scrvice
