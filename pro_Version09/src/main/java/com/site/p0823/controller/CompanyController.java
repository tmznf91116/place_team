package com.site.p0823.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.InquiryVo;
import com.site.p0823.service.CompanyService;

@Controller
public class CompanyController {

	@Autowired
	CompanyService companyService;
	
	//회사 메인
	@RequestMapping("companyMain")
	public String companyMain(Model model) {
		ArrayList<CompanyVo> list = companyService.selectCompanyList();
		model.addAttribute("CompanyList", list);
		return "/company/companyMain";
	}
	
	//회사 상세
	@RequestMapping("companyDetails")
	public String companyDetails(@RequestParam int cc_Id, CompanyVo companyVo, Model model) {
		companyVo = companyService.selectCompanyOne(cc_Id);
		model.addAttribute("companyVo", companyVo);
		return "/company/companyDetails";
	}
	
	//회사 등록
	@RequestMapping("companyRegistration")
	public String companyRegistration() {
		return "/company/companyRegistration";
	}
	
	//회사 등록 저장
	@PostMapping("companyRegistration")
	public String companyRegistration(CompanyVo companyVo,@RequestParam MultipartFile Main,
			@RequestParam int cc_Nember2, @RequestParam int cc_Nember3,
			@RequestParam String cc_Tel1, @RequestParam String cc_Tel2,
			@RequestParam String emailsb, @RequestParam String[] interiorCategory) throws Exception {
		//사업자번호 등록
		companyVo.setCc_Nember(companyVo.getCc_Nember() +"-"+ cc_Nember2 +"-"+ cc_Nember3);
		
		//전화번호 등록
		companyVo.setCc_Tel(companyVo.getCc_Tel()+"-"+cc_Tel1+"-"+cc_Tel2);
		
		//업체메일 등록
		companyVo.setCc_Mail(companyVo.getCc_Mail()+"@"+emailsb);
		
		//업체카테고리
		String Categories = "";
		for(String i:interiorCategory) {
			if(i.equals(interiorCategory[0])) Categories = i;
			else Categories = Categories + ","+i;
		}
		companyVo.setCc_Categories(Categories);
		
		//업체 메인사진 저장 부분
		if(Main.getSize()!=0) {

			String main1 = String.format("%s", Main);
			
			//파일저장위치
			String fileUrl = "C:/Users/82109/git/Project_lastFile/pro_Version09/src/main/resources/static/companyImg/";
			//복사할 파일
			File f = new File(fileUrl+Main);
			//파일 업로드
			Main.transferTo(f);
			//db에 저장하기 위해 vo에 파일이름을 저장시킴.
			companyVo.setCc_Main(main1);
		}
		companyService.insertCompanyOne(companyVo);
		return "/company/companyRegistration";
	}

	
	//시공문의하기
	@RequestMapping("interiorInquiries")
	public String company(@RequestParam String cc_Cname,Model model) {
		model.addAttribute("cc_Cname", cc_Cname);
		return "company/interiorInquiries";
	}
	
	//시공문의하기 저장
	@PostMapping("interiorInquiries")
	public String company(InquiryVo inquiryVo,@RequestParam String user_Nickname) throws Exception {
		//System.out.println(inquiryVo);
		
		companyService.insertInquirySave(inquiryVo);
		String nickname = URLEncoder.encode(inquiryVo.getUser_Nickname(), "UTF-8");
		
		return "redirect:/myPage?nickname="+nickname;
	}
	
	
}//class
