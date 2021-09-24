package com.site.p0823.service;

import java.util.ArrayList;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_DetailsVo;
import com.site.p0823.Vo.user_InquiryVo;

public interface UserService {
	
	//회원가입
	void insertUserAdd(UserVo userVo);
	//로그인
	UserVo selectLoginOne(String in_userEmail, String in_userPw);
	
	//배송상세부분 이메일 가져오기
	UserVo selectUserOneSearch(int s_id);
	//배송상세부분 회원상세 가져오기
	user_DetailsVo selectInformationYes(int s_id);
	//배송상세부분 회원상세 저장하기
	void insertDetailsSet(user_DetailsVo user_DetailsVo,int s_id);
	
	//이메일 랜덤인증번호
   String getCreateKey();
   //이메일 인증
   String emailCheck(String user_email, String email2);
   
   //고객문의 하기
   void insertUserQuestionSet(user_InquiryVo inquiryVo);
   
   //검색부분 회사
   ArrayList<CompanyVo> selectComSearchList(String search);
   //검색부분 상품   
   ArrayList<ProductVo> selectStoreSearchList(String search);

   
   
   
   
   
   
   
   
   
}
