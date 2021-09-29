package com.site.p0823.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.InquiryVo;

@Mapper
public interface CompanyMapper {

	//시공문의 저장
	void insertInquirySave(InquiryVo inquiryVo);

	//업체등록 저장
	void insertCompanyOne(CompanyVo companyVo);

	//업체 메인 리스트
	ArrayList<CompanyVo> selectCompanyList();

	//업체 상세
	CompanyVo selectCompanyOne(int cc_Id);

	ArrayList<CompanyVo> oneAll(String one);

	ArrayList<CompanyVo> aptAll(String one);

	ArrayList<CompanyVo> solAll(String one);
	
	

	
	
	
	
	
	
	
	
	
	
	
}//class
