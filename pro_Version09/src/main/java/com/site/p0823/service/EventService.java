package com.site.p0823.service;

import java.util.ArrayList;
import java.util.Map;

import com.site.p0823.Vo.EventVo;
import com.site.p0823.Vo.EventListVo;


public interface EventService {

		// 댓글 전체 리스트
		Map<String, Object> selectCommentAll(int page, int event_id);

		// 댓글추가
		Map<String, Object> eventInsertCommentWrite(EventVo eventVo);
//
//		// 댓글수정
//		EventVo updateCommentModify(EventVo eventVo);
//
		// 댓글삭제
		int deleteComment(EventVo eventVo);

		//이벤트 리스트
		ArrayList<EventListVo> selecteventList();

	


		

		


		

		



		
		
		

}
