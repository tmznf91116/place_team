package com.site.p0823.service;

import java.util.ArrayList;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.InquiryVo;

public interface CompanyService {

	//업체등록 저장
	void insertCompanyOne(CompanyVo companyVo);
	
	//시공문의 저장
	void insertInquirySave(InquiryVo inquiryVo);

	//업체 메인 리스트 
	ArrayList<CompanyVo> selectCompanyList();
	
	//업체 상세 리스트
	CompanyVo selectCompanyOne(int cc_Id);

	//업체 검색
	ArrayList<CompanyVo> oneAll();

	ArrayList<CompanyVo> aptAll();

	ArrayList<CompanyVo> solAll();

	
	
	
	
	
	
	
	
	
	
	
	
}//class
