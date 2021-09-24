package com.site.p0823.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_DetailsVo;
import com.site.p0823.Vo.user_InquiryVo;

@Mapper
public interface UserMapper {

	//회원가입
	void insertUserAdd(UserVo userVo);
	
	//로그인
	UserVo selectLoginOne(String id, String pw);

	//배송상세에서 이메일 가지고오기
	UserVo selectUserOneSearch(int s_id);
	
	//배송상세부분 회원상세 가져오기
	user_DetailsVo selectInformationYes(int s_id);

	//배송상세부분 회원상세 저장하기
	void insertDetailsSet(user_DetailsVo user_DetailsVo, int s_id);

	//고객 문의하기 저장
	void insertUserQuestionSet(@Param("inquiryVo") user_InquiryVo inquiryVo);

	//검색부분 회사
	ArrayList<CompanyVo> selectComSearchList(@Param("search") String search);
	//검색부분 상품
	ArrayList<ProductVo> selectStoreSearchList(@Param("search") String search);

}
