package com.site.p0823.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.InquiryVo;
import com.site.p0823.mapper.CompanyMapper;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	CompanyMapper companyMapper;

	//시공문의 저장
	@Override
	public void insertInquirySave(InquiryVo inquiryVo) {
		
		companyMapper.insertInquirySave(inquiryVo);
	}
	
	//업체등록 저장
	@Override
	public void insertCompanyOne(CompanyVo companyVo) {
		companyMapper.insertCompanyOne(companyVo);
		
	}

	//업체 메인 리스트
	@Override
	public ArrayList<CompanyVo> selectCompanyList() {
		ArrayList<CompanyVo> list = companyMapper.selectCompanyList();
		return list;
	}

	//업체 상세 
	@Override
	public CompanyVo selectCompanyOne(int cc_Id) {
		CompanyVo companyVo = companyMapper.selectCompanyOne(cc_Id);
		return companyVo;
	}

	
	@Override
	public ArrayList<CompanyVo> oneAll() {
		String onelom = "원룸";
		ArrayList<CompanyVo> list = companyMapper.oneAll(onelom);
		return list;
	}

	@Override
	public ArrayList<CompanyVo> aptAll() {
		String one = "아파트";
		ArrayList<CompanyVo> list = companyMapper.aptAll(one);
		return list;
	}

	@Override
	public ArrayList<CompanyVo> solAll() {
		String one = "빌라";
		ArrayList<CompanyVo> list = companyMapper.solAll(one);
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
}//class
