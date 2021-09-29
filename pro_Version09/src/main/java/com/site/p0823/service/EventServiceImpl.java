package com.site.p0823.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0823.Vo.EventListVo;
import com.site.p0823.Vo.EventVo;
import com.site.p0823.mapper.EventMapper;


@Service
public class EventServiceImpl implements EventService {

	@Autowired
	EventMapper eventMapper;
	
	 //이벤트 리스트
	@Override
	public ArrayList<EventListVo> selecteventList() {
		ArrayList<EventListVo> list = eventMapper.selecteventList();
			
		return list;
	}
	
	
	@Override	//댓글 전체 리스트,댓글 총 개수
	public Map<String, Object> selectCommentAll(int page, int event_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		//하단넘버링 구하는 메소드
		//하단 넘버링 : commentCount,page,maxpage,startpage,endpage
		//게시글 전체개수 (일반게시글,검색게시글)
		
		int commentCount = eventMapper.selectCommentCount(event_id);	//전체댓글 수
		
		int limit=10; //한페이지당 게시글 수
		int numlimit=10; //하단 넘버링 개수
		
		int maxpage = (int)((double)commentCount/limit+0.99); //최대페이지 수
		int startpage = (((int)((double)page/numlimit+0.99))-1)*numlimit+1; //하단넘버링 첫번째 수
		int endpage = startpage+numlimit-1; //하단넘버링 마지막 수
		if(endpage>maxpage) endpage=maxpage; // 마지막수가 maxpage수 보다 크면 maxpage로 대체
		
		int startrow = (page-1)*limit+1;
		int endrow = startrow+limit-1;
		
		List<EventVo> list = eventMapper.selectCommentAll(startrow, endrow, event_id);
		
		//하단 넘버링에 필요한 자료
		
		map.put("list",list);
		map.put("commentCount",commentCount);
		map.put("maxpage",maxpage);
		map.put("startpage",startpage);
		map.put("endpage",endpage);
		return map;
	}
	  
	
	  @Override //댓글 추가
	  public Map<String, Object> eventInsertCommentWrite(EventVo eventVo) {
		  Map<String, Object> map = new HashMap<String, Object>();
		  System.out.println("serviceImpl");
		  
		  //댓글 저장
		  eventMapper.eventInsertCommentWrite(eventVo);	//selectKey를 통해 eventVo.event_no();를 가져옴

		  System.out.println("여기1: "+ eventVo.getEvent_date() );
		  //댓글 저장후 1개 검색
		  eventVo = eventMapper.selectCommentWrite(eventVo.getEvent_no()+1);
		  System.out.println("여기2: "+ eventVo.getEvent_date() );
		  
		 // String day = (String)(eventVo.getEvent_date()).substring(11); 
		  //전체댓글 수
		  int commentCount = eventMapper.selectCommentCount(eventVo.getEvent_id()+1);	

		  map.put("eventVo",eventVo);
		  map.put("commentCount",commentCount);
		 // map.put("day",day);
		  
		  return map;
	  }

	  @Override  //댓글 삭제
	 public int deleteComment(EventVo eventVo) {
		  //댓글 삭제
		  eventMapper.deleteComment(eventVo); 
		  // 댓글개수
		  int commentCount = eventMapper.selectCommentCount(eventVo.getEvent_no()); 
		  return commentCount; 
	  }


	@Override
	public EventListVo selecteventListOne(int event_id) {
		EventListVo eventVo = eventMapper.selecteventListOne(event_id);
		return eventVo;
	}


	



	




	
}
