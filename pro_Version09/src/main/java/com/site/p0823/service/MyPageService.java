package com.site.p0823.service;

import java.util.ArrayList;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.EventVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserCartVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_InquiryVo;

public interface MyPageService {

	//고객문의 리스트
	ArrayList<user_InquiryVo> selectUserInquiryList(String nickname);
	//문의내역 리스트 
	ArrayList<Construction_InquiryVo> selectInquiryList(String nickname);
	//메인 댓글 
	ArrayList<EventVo> setletEventMylist(String nickname);
	//이미지 불러오기
	UserVo selectUserMainImgGet(String nickname);
	
	//기존물풀 없을시 장바구니 넣기
	int insertCartGo(ProductVo productVo,int s_id,int count);

	//기존물풀 있을시 장바구니 추가
	int updateCartGo(ProductVo productVo, int s_id, int count);
	
	//장바구니 출력
	ArrayList<UserCartVo> selectMyCartList(int s_id);
	
	//장바구니 구매숫자 변경 한거 업데이트
	int productCartUpdate(UserCartVo userCartVo);

	//장바구니 선택한 제품 삭제
	int productCartDelete(UserCartVo userCartVo);
	
	//구매 리스트 출력
	ArrayList<Delivery_StatusVo> selectDeliveryMyList(int s_id);
	//구매 리스트에 보여질 상품 사진과 이름 가지고오기
	ArrayList<ProductVo> selectProductBuyList(Integer product_Number);
	
	//마이페이지 사진 넣기
	void insertMainImgSet(UserVo userVo);
	void updateMainImgSet(UserVo userVo);
	//기존 이미지가있는지 확인
	UserVo selectMyImgGet(UserVo userVo);
	
	



}
