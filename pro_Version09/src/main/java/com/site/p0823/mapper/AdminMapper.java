package com.site.p0823.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.InquiryVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.user_InquiryVo;

@Mapper
public interface AdminMapper {
	
	//상품 등록 저장
	void insertProductOne(ProductVo productVo);
	//상품 검색 앞,뒤 포함
	ArrayList<ProductVo> selectListAll(String deleteProductName);
	//상품 삭제 
	void selectDeleteOne(int deleteNum);
	//시공문의 관리
	ArrayList<InquiryVo> selectInquiryOfficer(int startrow, int endrow, String category, String searchWord);
	//일반문의 관리
	ArrayList<user_InquiryVo> selectuserInquiryOfficer(int startrow, int endrow, String category, String searchWord);
	//시공문의 관리 게시판 수 
	int selectListCount(String category, String searchWord);
	//일만문의 관리 게시판 수
	int selectuserListCount(String category, String searchWord);
	//업체 검색 앞,뒤 포함
	ArrayList<CompanyVo> selectCompanyAllList(String deletecompanyName);
	//상품 정보 수정
	int UpdateModfiy(int deleteNum, int modfiyPrice, int modfiyPriceStock);
	//업체 삭제
	void companyDeleteOne(int deleteNum);
	//업체 수정
	int companyUpdateModfiy(int ccNum, String pname);
	//배송관리 리스트
	ArrayList<Delivery_StatusVo> selectDeliveryList();
	//관리자 배송현황 업데이트
	void updateLocationUpDate(@Param("user_Id") int user_Id, @Param("location") String location);
	
	
	


}
