package com.site.p0823.service;

import java.util.ArrayList;
import java.util.Map;

import com.site.p0823.Vo.CommunityCommentVo;
import com.site.p0823.Vo.communityVo;

public interface communityService {

	// 커뮤티티 업로드 부분
	void insertCommunityOneUpload(communityVo communityVo);

	// 커뮤니티 글 불러오기
	ArrayList<communityVo> selectAllCommunityList();

	// 번호로 글 하나 불러오기
	communityVo selectOnecommunityGet(int com_Num);

	// 조회수 증가
	void updateCommunityHitUp(int com_Num);

	// 댓글 전체 리스트
	Map<String, Object> SelectCommentAll(int com_num);

	// 댓글추가
	Map<String, Object> InsertCommentWrite(CommunityCommentVo cCommentVo);

	// 댓글수정
	CommunityCommentVo updateCommentModify(CommunityCommentVo cCommentVo);

	// 댓글삭제
	int DeleteComment(CommunityCommentVo cCommentVo);


}//class



