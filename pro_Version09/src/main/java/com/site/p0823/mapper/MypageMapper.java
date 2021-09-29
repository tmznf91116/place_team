package com.site.p0823.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.EventVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserCartVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_InquiryVo;

@Mapper
public interface MypageMapper {

   //고객문의 리스트
   ArrayList<user_InquiryVo> selectUserInquiryList(@Param("nickname") String nickname);
   //문의내역 리스트
   ArrayList<Construction_InquiryVo> selectInquiryList(String nickname);
   //댓글 리스트
   ArrayList<EventVo> setletEventMylist(String nickname);
   //이미지 불러오기
   UserVo selectUserMainImgGet(String nickname);

   //장바구니 넣기
   int insertCartGo(ProductVo productVo, int s_id, int count);

   //장바구니 추가
   int updateCartGo(ProductVo productVo, int s_id, int count);

   //장바구니 출력
   ArrayList<UserCartVo> selectMyCartList(int s_id);

   //장바구니 구매숫자 변경 한거 업데이트
   int productCartUpdate(UserCartVo userCartVo);

   //장바구니 선택한 제품 삭제
   int productCartDelete(UserCartVo userCartVo);
   
   
   //구매 리스트 출력
   ArrayList<Delivery_StatusVo> selectDeliveryMyList(@Param("s_id") int s_id);
   //구매 리스트에 보여질 상품 사진과 이름 가지고오기
   ArrayList<ProductVo> selectProductBuyList(Integer product_Number);
   //구매리스트에 배송 출발 하기전 삭제
   int deleteBuyDeliverySet(@Param("Vo") Delivery_StatusVo delivery_StatusVo);
   //구매할경우 장바구니 삭제
   void deleteSelectIdAllBuy(@Param("s_id") int s_id);
   
   
   //마이페이지 사진넣기
   void insertMainImgSet(@Param("userVo") UserVo userVo);
   void updateMainImgSet(@Param("userVo") UserVo userVo);
   //기존 이미지가 있는지 확인
   UserVo selectMyImgGet(@Param("userVo") UserVo userVo);
   
   
   
   



   
   
   
   
}//class