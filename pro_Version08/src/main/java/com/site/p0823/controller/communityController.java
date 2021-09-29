package com.site.p0823.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.site.p0823.Vo.CommunityCommentVo;
import com.site.p0823.Vo.communityVo;
import com.site.p0823.service.communityService;

@Controller
public class communityController {

	@Autowired
	communityService communityService;

	// 커뮤니티 메인
	@RequestMapping("communityMain")
	public String communityMain(Model model) {
		// 커뮤니티 글 불러오기
		ArrayList<communityVo> list = communityService.selectAllCommunityList();
		

		model.addAttribute("Clist", list);
		return "/community/communityMain";
	}

	// 커뮤니티 디테일
	@RequestMapping("communityDetails")
	public String communityDetails(@RequestParam int com_Num, Model model) {
	// 번호로 글 하나 불러오기
	communityVo communityVo = communityService.selectOnecommunityGet(com_Num);
	// 조회수 증가
	communityService.updateCommunityHitUp(com_Num);
	//댓글 리스트 가지고 오기
	 Map<String, Object> map = communityService.SelectCommentAll(com_Num);
	
	System.out.println(map);
	 
	model.addAttribute("map",map);
	model.addAttribute("communityVo", communityVo);
	return "/community/communityDetails";
	}

	// 커뮤니티 글쓰기
	@RequestMapping("communityWrite")
	public String communityWrite() {

		return "/community/communityWrite";
	}

	// 글쓰기 저장
	@PostMapping("Write")
	public String Write(@RequestParam MultipartFile comm1, @RequestParam MultipartFile comm2,
			@RequestParam MultipartFile comm3, communityVo communityVo) throws Exception {

		if (comm1.getSize() != 0) {

			String comm_1 = String.format("%s", comm1);
			String comm_2 = String.format("%s", comm2);
			String comm_3 = String.format("%s", comm3);

			// 파일저장위치
			//String fileUrl = "C:/workspace/pro_Version09/pro_Version09/src/main/resources/static/communityImg/";
			String fileUrl = "C:/Users/jmp/git/repository/pro_Version09/src/main/resources/static/communityImg/";
			// 복사할 파일
			File f1 = new File(fileUrl + comm1);
			File f2 = new File(fileUrl + comm2);
			File f3 = new File(fileUrl + comm3);
			// 파일 업로드
			comm1.transferTo(f1);
			comm2.transferTo(f2);
			comm3.transferTo(f3);
			// db에 저장하기 위해 vo에 파일이름을 저장시킴.
			communityVo.setCom_Img1(comm_1);
			communityVo.setCom_Img2(comm_2);
			communityVo.setCom_Img3(comm_3);

		}

		System.out.println(communityVo);

		// 업로드 부분
		communityService.insertCommunityOneUpload(communityVo);

		return "redirect:/communityMain";
	}

	// 댓글 추가
	@RequestMapping("communitycommentWrite")
	@ResponseBody
	public Map<String, Object> communityCommentWrite(CommunityCommentVo cCommentVo) {
		// db에 eventVo데이터를 저장시킴
		System.out.println(cCommentVo);

		Map<String, Object> map = communityService.InsertCommentWrite(cCommentVo);

		
		
		return map;
	}
//
//	// 댓글 수정
//	@RequestMapping("comModify")
//	@ResponseBody
//	public CommunityCommentVo commentModify(CommunityCommentVo cCommentVo) {
//
//		CommunityCommentVo updateCCommentVo = communityService.updateCommentModify(cCommentVo);
//
//		return updateCCommentVo;
//	}
//
//	// 댓글 삭제
//	@RequestMapping("communitycommentDelete")
//	@ResponseBody
//	public int communityCommentDelete(CommunityCommentVo cCommentVo) {
//		// 댓글개수 가져옴.
//		int commentCount = communityService.DeleteComment(cCommentVo);
//		return commentCount;
//	}

}// class
