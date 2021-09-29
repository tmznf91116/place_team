package com.site.p0823.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.site.p0823.Vo.CommunityCommentVo;
import com.site.p0823.Vo.communityVo;

@Mapper
public interface communityMapper {

	// 커뮤티니 업로드 부분
	void insertCommunityOneUpload(@Param("communityVo") communityVo communityVo);

	// 커뮤니티 글 불러오기
	ArrayList<communityVo> selectAllCommunityList();

	// 번호로 글 하나 불러오기
	communityVo selectOnecommunityGet(@Param("com_Num") int com_Num);

	// 조회수 증가
	void updateCommunityHitUp(@Param("com_Num") int com_Num);

	// 댓글 전체 리스트
	List<CommunityCommentVo> SelectCommentAll(@Param("com_num") int com_num);

	// 댓글 총 개수
	int SelectCommentCount(@Param("com_num") int com_num);
	
	// 댓글 추가
	int InsertCommentWrite(@Param("cCommentVo") CommunityCommentVo cCommentVo);
	
	// 댓글 1개 리스트
	CommunityCommentVo SelectCommentWrite(@Param("cCommentVo") CommunityCommentVo cCommentVo);


//	// 댓글 수정
//	void updateCommentModify(CommunityCommentVo cCommentVo);
//
//	// 댓글 삭제
//	void DeleteComment(CommunityCommentVo cCommentVo);

	
	
}//class
