package com.site.p0823.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.InquiryVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.user_InquiryVo;
import com.site.p0823.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminMapper adminMapper;

	// 상품 등록 저장
	@Override
	public void insertProductOne(ProductVo productVo) {
		adminMapper.insertProductOne(productVo);
		System.out.println("서비스");
	}

	// 상품 리스트 검색
	@Override
	public ArrayList<ProductVo> selectListAll(String deleteProductName) {
		ArrayList<ProductVo> list = adminMapper.selectListAll(deleteProductName);

		System.out.println(list.get(0).getProduct_Number());
		System.out.println(list.size());
		return list;
	}

	// 상품 삭제 번호
	@Override
	public void selectDeleteOne(int deleteNum) {
		adminMapper.selectDeleteOne(deleteNum);
	}

	// 시공문의 관리
	@Override
	public Map<String, Object> selectInquiryOfficer(int page, String category, String searchWord) {
		Map<String, Object> map = new HashMap<String, Object>();

		int listCount = adminMapper.selectListCount(category, searchWord); // 전체 시공문의 게시글 수

		int limit = 5; // 한페이지에 게시글 수
		int numlimit = 10; // 하단 넘버링 수
		int maxpage = (int) ((double) listCount / limit + 0.99); // 최대페이지 수
		int startpage = (((int) ((double) page / numlimit + 0.99)) - 1) * numlimit + 1; // 하단넘버링 첫번째 수
		int endpage = startpage + numlimit - 1; // 하단넘버링 마지막 수
		if (endpage > maxpage)
			endpage = maxpage; //

		int startrow = (page - 1) * limit + 1; // 페이지에서 게시글 첫번째 가져오는 수
		int endrow = startrow + limit - 1; // 페이지에서 게시글 마지막번째 가져오는 수

		ArrayList<InquiryVo> list = adminMapper.selectInquiryOfficer(startrow, endrow, category, searchWord);

		map.put("listCount", listCount);
		map.put("page", page);
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("list", list);

		map.put("category", category);
		map.put("searchWord", searchWord);

		return map;
	}

	// 일반문의 관리
	@Override
	public Map<String, Object> selectuserInquiryOfficer(int page, String category, String searchWord) {
		Map<String, Object> map = new HashMap<String, Object>();

		int listCount = adminMapper.selectuserListCount(category, searchWord); // 전체 일반문의 게시글 수

		int limit = 5; // 한페이지에 게시글 수
		int numlimit = 10; // 하단 넘버링 수
		int maxpage = (int) ((double) listCount / limit + 0.99); // 최대페이지 수
		int startpage = (((int) ((double) page / numlimit + 0.99)) - 1) * numlimit + 1; // 하단넘버링 첫번째 수
		int endpage = startpage + numlimit - 1; // 하단넘버링 마지막 수
		if (endpage > maxpage)
			endpage = maxpage; //

		int startrow = (page - 1) * limit + 1; // 페이지에서 게시글 첫번째 가져오는 수
		int endrow = startrow + limit - 1; // 페이지에서 게시글 마지막번째 가져오는 수

		ArrayList<user_InquiryVo> list = adminMapper.selectuserInquiryOfficer(startrow, endrow, category, searchWord);

		map.put("listCount", listCount);
		map.put("page", page);
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("list", list);

		map.put("category", category);
		map.put("searchWord", searchWord);

		return map;
	}

	// 업체 이름 검색
	@Override
	public ArrayList<CompanyVo> selectCompanyAllList(String deletecompanyName) {
		ArrayList<CompanyVo> list = adminMapper.selectCompanyAllList(deletecompanyName);
		return list;
	}

	// 상품 정보 수정
	@Override
	public int UpdateModfiy(int deleteNum, int modfiyPrice, int modfiyPriceStock) {
		int modfiyCk = adminMapper.UpdateModfiy(deleteNum, modfiyPrice, modfiyPriceStock);
		return modfiyCk;
	}

	// 업체 삭제
	@Override
	public void companyDeleteOne(int deleteNum) {
		adminMapper.companyDeleteOne(deleteNum);
	}

	// 업체 수정
	@Override
	public int companyModfiyOne(int ccNum, String pname) {
		int modfiyCk = adminMapper.companyUpdateModfiy(ccNum, pname);
		return modfiyCk;
	}

	// 배송관리 리스트
	@Override
	public ArrayList<Delivery_StatusVo> selectDeliveryList() {
		ArrayList<Delivery_StatusVo> list = adminMapper.selectDeliveryList();
		return list;
	}

	// 관리자 배송현황 업데이트
	@Override
	public void updateLocationUpDate(Delivery_StatusVo delivery_StatusVo,String Location) {
		adminMapper.updateLocationUpDate(delivery_StatusVo, Location);
	}

}// class
