package com.site.p0823.service;

import java.util.ArrayList;
import java.util.Map;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.ProductVo;

public interface AdminService {

	// 상품 등록 저장
	void insertProductOne(ProductVo productVo);

	// 상품 이름 검색 앞,뒤포함
	ArrayList<ProductVo> selectListAll(String deleteProductName);

	// 삭제 예정 제품 번호
	void selectDeleteOne(int deleteNum);

	// 시공문의 관리
	Map<String, Object> selectInquiryOfficer(int page, String category, String searchWord);

	// 일반문의 관리
	Map<String, Object> selectuserInquiryOfficer(int page, String category, String searchWord);

	// 업체 이름 검색 앞,뒤포함
	ArrayList<CompanyVo> selectCompanyAllList(String deletecompanyName);

	// 상품 정보 수정
	int UpdateModfiy(int deleteNum, int modfiyPrice, int modfiyPriceStock);

	// 업체 삭제
	void companyDeleteOne(int deleteNum);

	// 업체 수정
	int companyModfiyOne(int ccNum, String pname);

	// 배송관리 리스트
	ArrayList<Delivery_StatusVo> selectDeliveryList();

	// 관리자 배송현황 업데이트
	void updateLocationUpDate(int user_Id,String Location);

}// class
