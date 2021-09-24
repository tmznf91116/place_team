package com.site.p0823.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;
import com.site.p0823.Vo.EventVo;
import com.site.p0823.Vo.EventListVo;


@Mapper
public interface EventMapper {

		// 댓글 전체 리스트
		List<EventVo> selectCommentAll(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("event_id") int event_id);

		// 댓글 총 개수
		int selectCommentCount(int event_id);

		// 댓글 추가
		int eventInsertCommentWrite(EventVo eventVo);

		// 댓글 1개 리스트
		EventVo selectCommentWrite(int event_no);
//
//		// 댓글 수정
//		void updateCommentModify(EventVo eventVo);
//
		// 댓글 삭제
		void deleteComment(EventVo eventVo);

		//이벤트리스트
		ArrayList<EventListVo> selecteventList();

		


}
