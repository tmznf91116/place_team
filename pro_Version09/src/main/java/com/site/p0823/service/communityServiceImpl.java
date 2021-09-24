package com.site.p0823.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0823.Vo.CommunityCommentVo;
import com.site.p0823.Vo.communityVo;
import com.site.p0823.mapper.communityMapper;

@Service
public class communityServiceImpl implements communityService {

	@Autowired
	communityMapper communityMapper;

	// 업로드 부분
	@Override
	public void insertCommunityOneUpload(communityVo communityVo) {
		communityMapper.insertCommunityOneUpload(communityVo);
	}

	// 커뮤니티 글 불러오기
	@Override
	public ArrayList<communityVo> selectAllCommunityList() {
		ArrayList<communityVo> list = communityMapper.selectAllCommunityList();
		return list;
	}

	// 번호로 글 하나 불러오기
	@Override
	public communityVo selectOnecommunityGet(int com_Num) {
		communityVo communityVo = communityMapper.selectOnecommunityGet(com_Num);
		return communityVo;
	}

	// 조회수 증가
	@Override
	public void updateCommunityHitUp(int com_Num) {
		communityMapper.updateCommunityHitUp(com_Num);
	}

	@Override // 댓글 전체 리스트,댓글 총 개수
	public Map<String, Object> SelectCommentAll(int com_num) {

		Map<String, Object> map = new HashMap<String, Object>();
		int commentCount = communityMapper.SelectCommentCount(com_num); // 전체댓글 수
		List<CommunityCommentVo> list = communityMapper.SelectCommentAll(com_num);
		map.put("list", list);
		map.put("commentCount", commentCount);
		return map;

	}

	@Override // 댓글 추가
	public Map<String, Object> InsertCommentWrite(CommunityCommentVo cCommentVo) {
		Map<String, Object> map = new HashMap<String, Object>();

		// 댓글 저장
		int ccnum = communityMapper.InsertCommentWrite(cCommentVo); // selectKey를 통해 cCommentVo.comment_no();를 가져옴
		
		System.out.println("번호 1: " + cCommentVo.getComment_no());
		System.out.println("번호 2: " + ccnum);
		// 댓글 저장후 1개 검색
		cCommentVo = communityMapper.SelectCommentWrite(cCommentVo);
		System.out.println("번호 3: " + cCommentVo.getComment_no());
		System.out.println("여기2: " + cCommentVo);
		
		// 전체댓글 수
		int commentCount = communityMapper.SelectCommentCount(cCommentVo.getCom_num() + 1);

		map.put("Vo", cCommentVo);
		map.put("commentCount", commentCount);
		
		return map;
	}

	@Override
	public CommunityCommentVo updateCommentModify(CommunityCommentVo cCommentVo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int DeleteComment(CommunityCommentVo cCommentVo) {
		// TODO Auto-generated method stub
		return 0;
	}

}// class
