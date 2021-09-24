package com.site.p0823.controller;


import java.io.File;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.EventVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserCartVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_InquiryVo;
import com.site.p0823.service.MyPageService;
import com.site.p0823.service.StoreService;
import com.site.p0823.service.UserService;

@Controller
public class MypageController {

	@Autowired
	MyPageService myPageService;
	@Autowired
	StoreService storeService;
	@Autowired
	UserService userService;
	
	DecimalFormat format = new DecimalFormat("###,###");

	@RequestMapping("myPage")
	public String myPage(Model model,@RequestParam String nickname) throws Exception {
		//메인 고객문의 3개
		ArrayList<user_InquiryVo> Ulist = null;
		Ulist = myPageService.selectUserInquiryList(nickname);
		//메인 시공문의 3개
		ArrayList<Construction_InquiryVo> Ilist = null;
		Ilist = myPageService.selectInquiryList(nickname);
		//메인 댓글 3개
		ArrayList<EventVo> Elist = null;
		//오타가 있지만 바꾸지 않음 select setlet
		Elist = myPageService.setletEventMylist(nickname);
		//사용자 메인 이미지 있으면 불러오기
		UserVo userVo = myPageService.selectUserMainImgGet(nickname);
		
		model.addAttribute("userVo",userVo);
		model.addAttribute("Elist", Elist);
		model.addAttribute("Ilist", Ilist);
		model.addAttribute("Ulist", Ulist);
		return "/mypage/myPage";
	}
	
	//회원정보 수정 
	@RequestMapping("userModify")
	public String userModify(@RequestParam MultipartFile Main, UserVo userVo) throws Exception {
		if(Main.getSize()!=0) {
			String main1 = String.format("%s", Main);
			//파일저장위치
			String fileUrl = "C:/workspace/pro_Version09/pro_Version09/src/main/resources/static/userImg/";
			//복사할 파일
			File f = new File(fileUrl+Main);
			//파일 업로드
			Main.transferTo(f);
			//db에 저장하기 위해 vo에 파일이름을 저장시킴.
			userVo.setUser_Main(main1);
		}
		//기존 이미지가 있는지 확인
		UserVo imgCheck = myPageService.selectMyImgGet(userVo);
		if(imgCheck == null) {
			myPageService.insertMainImgSet(userVo);			
		} else {
			myPageService.updateMainImgSet(userVo);	
		}
		String nickname = URLEncoder.encode(userVo.getUser_nickname(), "UTF-8");
		System.out.println("nickname : " + userVo.getUser_nickname());
		System.out.println("nickname : " + nickname);
		
		return "redirect:/myPage?nickname="+nickname;
	}
	
	//장바구니
	@RequestMapping("cart")
	public String cart(@RequestParam int s_id,Model model) {
		ArrayList<UserCartVo> Cartlist = myPageService.selectMyCartList(s_id);
		int All_price = 0; 
		int CartNum = 1;
		String All_price2 = "";
		for(int i=0;i<Cartlist.size();i++) {
			Cartlist.get(i).setProduct_Price(Cartlist.get(i).getProduct_Num() * Cartlist.get(i).getProduct_Price());
			Cartlist.get(i).setProduct_Price2(format.format(Cartlist.get(i).getProduct_Price()));
			All_price += Cartlist.get(i).getProduct_Price();
		}
		All_price2 = (format.format(All_price));
	
		model.addAttribute("All_price", All_price2);
		model.addAttribute("CartNum", CartNum);
		model.addAttribute("Cartlist", Cartlist);
		return "/mypage/cart";
	}
	
	//마이페이지 상품별 카운트 증가
	@RequestMapping("myPageNumverUp")
	@ResponseBody
	public ProductVo myPageNumverUp(@RequestParam int product_Number, @RequestParam int product_Price, @RequestParam int product_Num) {
		ProductVo productVo = storeService.producerOneSearch(product_Number);
		productVo.setProduct_Price(productVo.getProduct_Price()*product_Num);
		productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
		return productVo;
	}
	
	//마이페이지 상품별 카운트 증가
	@RequestMapping("myPageNumverDown")
	@ResponseBody
	public ProductVo myPageNumverDown(@RequestParam int product_Number, @RequestParam int product_Price, @RequestParam int product_Num) {
		ProductVo productVo = storeService.producerOneSearch(product_Number);
		productVo.setProduct_Price(productVo.getProduct_Price()*product_Num);
		productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
		return productVo;
	}
	
	//장바구니 구매숫자 변경 한거 업데이트
	@PostMapping("cartReUpdate")
	@ResponseBody
	public int cartReUpdate(UserCartVo userCartVo) {
		int result = 0;
		result =  myPageService.productCartUpdate(userCartVo);
		return result;
	}
	//장바구니 선택한 제품 삭제
	@PostMapping("cartDelete")
	@ResponseBody
	public int cartDelete(UserCartVo userCartVo) {
		int result = 0;
		result =  myPageService.productCartDelete(userCartVo);
		return result;
	}
	
	
	
	
	
	
	
	
	//구매내역
	@RequestMapping("buyDetails")
	public String buyDetails(@RequestParam int s_id,Model model) {
		
		ArrayList<Delivery_StatusVo> delivery_StatusVo = myPageService.selectDeliveryMyList(s_id);
		ArrayList<ProductVo> plist = null;
		for(int i=0; i<delivery_StatusVo.size();i++) {
			plist = myPageService.selectProductBuyList(delivery_StatusVo.get(i).getProduct_Number());
		}
		model.addAttribute("delivery_StatusVo",delivery_StatusVo);
		return "/mypage/buyDetails";
	}
	
	
	//구매내역 삭제
	@PostMapping("buyDelete")
	@ResponseBody
	public String buyDelete(@RequestParam int Id,Model model) {
		
		System.out.println("유저의 아이디  "+Id);
		
		model.addAttribute("user_Id",Id);
		return "redirect:/buyDetails";
	}
	
	
	
	
	
	//문의내역 2종류
	@RequestMapping("myInquiries")
	public String myInquiries(@RequestParam int s_id, Model model) {
		UserVo userVo = userService.selectUserOneSearch(s_id);
		//메인 시공문의 3개
		ArrayList<Construction_InquiryVo> Ilist = myPageService.selectInquiryList(userVo.getUser_nickname());
		//메인 고객문의 3개
		ArrayList<user_InquiryVo> Ulist = myPageService.selectUserInquiryList(userVo.getUser_nickname());
		
		model.addAttribute("Ulist", Ulist);
		model.addAttribute("Ilist", Ilist);
		return "/mypage/myInquiries";
	}
	//시공문의 더보기
	@PostMapping("conList")
	@ResponseBody
	public ArrayList<Construction_InquiryVo> conListAll(@RequestParam String user_Nickname){
		ArrayList<Construction_InquiryVo> Ilist = myPageService.selectInquiryList(user_Nickname);
		return Ilist;
	}
	//일반문의 더보기
	@PostMapping("userList")
	@ResponseBody
	public ArrayList<user_InquiryVo> userList(@RequestParam String user_Nickname){
		ArrayList<user_InquiryVo> Ulist = myPageService.selectUserInquiryList(user_Nickname);
		return Ulist;
	}
	
	
	
	//시공업체 등록 이동(컴퍼니 컨트롤로에서 정보 넣음)
	@RequestMapping("userInfoModify")
	public String userInfoModify() {
		return "/mypage/userInfoModify";
	}

}//class
