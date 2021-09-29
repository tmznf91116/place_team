package com.site.p0823.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.user_InquiryVo;
import com.site.p0823.service.inquiresBoardService;

@Controller
public class inquiresBoardController {

	@Autowired
	inquiresBoardService inquiresBoardService;
	
	//시공문의내역 내용 가지고오기
	@RequestMapping("InquiriesCompany")
	public String InquiriesCompany(@RequestParam int cd_id,Model model) {
		Construction_InquiryVo inquiryVo = inquiresBoardService.selcetInquiresOne(cd_id);
		model.addAttribute("inquiryVo",inquiryVo);
		return "/inquiresBoard/InquiriesCompany";
	}
	
	//시공문의 답변 페이지 
	@PostMapping("inquiresComAnswer")
	public String inquiresComAnswer(@RequestParam int cd_id,Model model) {
		Construction_InquiryVo inquiryVo = inquiresBoardService.selcetInquiresOne(cd_id);
		model.addAttribute("inquiryVo",inquiryVo);
		return "/inquiresBoard/inquiresComAnswer";
	}

	//시공문의 답변 저장
	@PostMapping("inquiresComAnswerOk")
	public String inquiresComAnswerOk(Construction_InquiryVo construction_InquiryVo) {
		inquiresBoardService.insertComInquiresSet(construction_InquiryVo);
		return "/admin/inquiriesDetails";
	}
	
	//일반문의내역 내용 가지고오기
	@RequestMapping("InquiriesUser")
	public String InquiriesUser(@RequestParam int ud_id,Model model) {
		user_InquiryVo inquiryVo = inquiresBoardService.selectUserInquiresOne(ud_id);
		model.addAttribute("inquiryVo",inquiryVo);
		return "/inquiresBoard/InquiriesUser";
	}
	//시공문의 답변 페이지 
	@PostMapping("inquiresUserAnswer")
	public String inquiresUserAnswer(@RequestParam int ud_id,Model model) {
		user_InquiryVo inquiryVo = inquiresBoardService.selectUserInquiresOne(ud_id);
		model.addAttribute("inquiryVo",inquiryVo);
		return "/inquiresBoard/inquiresUserAnswer";
	}
	
	//시공문의 답변 저장
	@PostMapping("inquiresUserAnswerOk")
	public String inquiresUserAnswerOk(user_InquiryVo user_InquiryVo) {
		inquiresBoardService.insertUserInquiresSet(user_InquiryVo);
		return "/admin/inquiriesDetails";
	}
	
	
	
	
}//class
