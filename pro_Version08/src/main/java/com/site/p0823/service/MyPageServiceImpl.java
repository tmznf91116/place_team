package com.site.p0823.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.EventVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserCartVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_InquiryVo;
import com.site.p0823.mapper.MypageMapper;


@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MypageMapper mypageMapper;
	
	//고객문의 리스트
	@Override
	public ArrayList<user_InquiryVo> selectUserInquiryList(String nickname) {
		ArrayList<user_InquiryVo> Ulist = mypageMapper.selectUserInquiryList(nickname);
		return Ulist;
	}
	//문의내역 리스트
	@Override
	public ArrayList<Construction_InquiryVo> selectInquiryList(String nickname) {
		ArrayList<Construction_InquiryVo> Ilist = mypageMapper.selectInquiryList(nickname);
	return Ilist;
	}
	//댓글 리스트
	@Override
	public ArrayList<EventVo> setletEventMylist(String nickname) {
		ArrayList<EventVo> Elist = mypageMapper.setletEventMylist(nickname);
		return Elist;
	}
	//이미지 불러오기
	@Override
	public UserVo selectUserMainImgGet(String nickname) {
		UserVo userVo = mypageMapper.selectUserMainImgGet(nickname);
		
		return userVo;
	}
	
	//장바구니 넣기
	@Override
	public int insertCartGo(ProductVo productVo,int s_id,int count) {
		int result = mypageMapper.insertCartGo(productVo,s_id,count);
		return result;
	}
	//장바구니 추가
	@Override
	public int updateCartGo(ProductVo productVo, int s_id, int count) {
		int result = mypageMapper.updateCartGo(productVo,s_id,count);
		return result;
	}
	//장바구니 출력
	@Override
	public ArrayList<UserCartVo> selectMyCartList(int s_id) {
		ArrayList<UserCartVo> list = mypageMapper.selectMyCartList(s_id);
		return list;
	}
	//장바구니 구매숫자 변경 한거 업데이트
	@Override
	public int productCartUpdate(UserCartVo userCartVo) {
		int result = mypageMapper.productCartUpdate(userCartVo);
		return result;
	}
	//장바구니 선택한 제품 삭제
	@Override
	public int productCartDelete(UserCartVo userCartVo) {
		int result = mypageMapper.productCartDelete(userCartVo);
		return result;
	}
	
	
	
	
	//구매 리스트 출력
	@Override
	public ArrayList<Delivery_StatusVo> selectDeliveryMyList(int s_id) {
		ArrayList<Delivery_StatusVo> delivery_StatusVo = mypageMapper.selectDeliveryMyList(s_id);
		return delivery_StatusVo;
	}
	//구매 리스트에 보여질 상품 사진과 이름 가지고오기
	@Override
	public ArrayList<ProductVo> selectProductBuyList(Integer product_Number) {
			ArrayList<ProductVo> plist = mypageMapper.selectProductBuyList(product_Number);	
		return plist;
	}
	//마이페이지 사진 넣기
	@Override
	public void insertMainImgSet(UserVo userVo) {
		mypageMapper.insertMainImgSet(userVo);
	}
	@Override
	public void updateMainImgSet(UserVo userVo) {
		mypageMapper.updateMainImgSet(userVo);
	}
	//기존 이미지가 있는지 확인
	@Override
	public UserVo selectMyImgGet(UserVo userVo) {
		UserVo imgCheck = mypageMapper.selectMyImgGet(userVo);
		return imgCheck;
	}
	

	

}
