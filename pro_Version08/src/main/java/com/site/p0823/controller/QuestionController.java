package com.site.p0823.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.site.p0823.Vo.user_InquiryVo;
import com.site.p0823.service.UserService;

@Controller
public class QuestionController {
	
	@Autowired
	UserService userService;
	
	//문의페이지
	@RequestMapping("question")
	public String question() {
		return "/question/question";
	}
	//문의페이지
	@RequestMapping("questionOk")
	public String questionOk(user_InquiryVo inquiryVo) {
		System.out.println(inquiryVo);
		userService.insertUserQuestionSet(inquiryVo);
		return "/question/questionOk";
	}
	//문의페이지
	@RequestMapping("serviceCenter")
	public String serviceCenter() {
		return "/question/serviceCenter";
	}
	
}//class
