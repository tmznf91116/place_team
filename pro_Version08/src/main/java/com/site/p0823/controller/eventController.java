package com.site.p0823.controller;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.site.p0823.Vo.EventListVo;
import com.site.p0823.Vo.EventVo;
import com.site.p0823.service.EventService;

@Controller
public class eventController {

	@Autowired
	EventService eventService;
	
	// 이벤트 리스트 페이지
	@RequestMapping("event")
	public String event_view(Model model) {
		ArrayList<EventListVo> list = eventService.selecteventList();
		
		
		model.addAttribute("list",list);
		
		
		return "/event/event";
	}
	
	//이벤트 뷰 페이지 
	@RequestMapping("eventDetail")
	public String event2(Model model,
			@RequestParam(value="page", defaultValue = "1") int page,
			@RequestParam int event_id) {
		
		
		Map<String, Object> map = eventService.selectCommentAll(page,event_id);
		
		model.addAttribute("map",map);
		//하단 넘버링 : listCount,page,maxpage,startpage,endpage
		return "/event/eventDetail";
	}
	
	// 댓글 추가
	@RequestMapping("commentWrite")
	@ResponseBody
	public Map<String, Object> commentWrite(EventVo eventVo) {
		//db에 eventVo데이터를 저장시킴
		/*
		 * System.out.println("닉네임 : " + eventVo.getUser_nickname());
		 * System.out.println("내용 : " + eventVo.getEvent_content());
		 * System.out.println("controller : "+eventVo.getEvent_id());
		 */
		
		Map<String, Object> map = eventService.eventInsertCommentWrite(eventVo);
		
		//System.out.println("멥 : "+map);
		
		return map;
	}

	// 댓글 삭제
	@RequestMapping("commentDelete")
	@ResponseBody
	public int commentDelete(EventVo eventVo) {
		// 댓글개수 가져옴.
		int commentCount = eventService.deleteComment(eventVo);
		return commentCount;
	}
				
			
}//class
