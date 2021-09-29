package com.site.p0823.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.communityVo;
import com.site.p0823.service.CompanyService;
import com.site.p0823.service.StoreService;
import com.site.p0823.service.UserService;
import com.site.p0823.service.communityService;

@Controller
public class MainController {

	@Autowired
	private UserService userService;
	@Autowired
	private StoreService storeService;
	@Autowired
	CompanyService companyService;
	@Autowired
	communityService communityService;
	
	
	DecimalFormat format = new DecimalFormat("###,###");
	
	@RequestMapping("index")
	   public String index(Model model) {
	      //시공업체 부분
	      ArrayList<CompanyVo> clist = companyService.selectCompanyList();
	      //스토어부분
	      ArrayList<ProductVo> plist = storeService.producerAllList();
	      for(int i=0;i<plist.size();i++) {
	         plist.get(i).setProduct_Price2(format.format(plist.get(i).getProduct_Price()));
	      }
	      //커뮤티티 부분
	      ArrayList<communityVo> commlist = communityService.selectAllCommunityList();
	      model.addAttribute("companyList", clist);
	      model.addAttribute("productList", plist);
	      model.addAttribute("communityList", commlist);
	      return "index";
	   }
	
	@RequestMapping("loginOut")
	public String loginOut() {
		return "/login/loginOut";
	}
	
	@RequestMapping("login")
	public String login() {
		return "/login/login";
	}
	@GetMapping("loginOk")
	public String loginOk() {
		return "/login/loginOk";
	}
	@GetMapping("test")
	public String test() {
		return "/store/test";
	}


	//로그인
	@PostMapping("login")
	public String login(HttpServletRequest request,@RequestParam String in_userEmail,
			@RequestParam String in_userPw, Model model) {
		HttpSession session = request.getSession();
		UserVo userVo=null;
		userVo = userService.selectLoginOne(in_userEmail,in_userPw);	
		if(userVo==null) {
			session.setAttribute("session_flag", "fail");
			return "redirect:/loginOk";
		} else {
			session.setAttribute("session_flag", "success");
			session.setAttribute("session_mail", userVo.getUser_email());
			session.setAttribute("s_ID", userVo.getUser_id());
			session.setAttribute("session_nickName", userVo.getUser_nickname());
		}
		if(userVo.getUser_id() == 1) {
			session.setAttribute("session_right", "Manager");
		}
		model.addAttribute("userVo", userVo);
		return "redirect:/loginOk";
		
	}
	
	@RequestMapping("user_Join")
	public String user_Join() {
		return "/join/user_Join";
	}

	//회원가입
	@PostMapping("user_Join")
	public String user_Join(@RequestParam String user_email,@RequestParam String email2,
			@RequestParam String user_pw,@RequestParam String user_nickname,@RequestParam(value = "snsCheck", defaultValue = "0") String snsCheck) {
		
		System.out.println(snsCheck);
		user_email = user_email+"@"+email2;
		int smsreceiptconsent= Integer.parseInt(snsCheck);
		
		UserVo userVo = new UserVo(user_email,user_pw,user_nickname,smsreceiptconsent);
		
		userService.insertUserAdd(userVo);
		
		return "redirect:/index";
	}
	
	//이메일인증컨트롤러
   @PostMapping("emailCheck")
   @ResponseBody
   public String emailCheck(HttpServletRequest request,@RequestParam String user_email, @RequestParam String email2) {
      HttpSession session = request.getSession();
      //이름,이메일주소를 넘겨서 비밀번호 생성후 이메일 발송처리 
      String pwCode = userService.emailCheck(user_email,email2);
      session.setAttribute("pwCode", pwCode);
      return pwCode;
   }
	
	
	
	//컴퍼니 올 리스트
	@PostMapping("companyAll")
	@ResponseBody
	public ArrayList<CompanyVo> companyAll(){
		ArrayList<CompanyVo> clist = companyService.selectCompanyList();
		return clist;
	}
	//컴퍼니 원룸 리스트
	@PostMapping("oneAll")
	@ResponseBody
	public ArrayList<CompanyVo> oneAll(){
		ArrayList<CompanyVo> clist = companyService.oneAll();
		return clist;
	}
	//컴퍼니 아파트 리스트
	@PostMapping("aptAll")
	@ResponseBody
	public ArrayList<CompanyVo> aptAll(){
		ArrayList<CompanyVo> clist = companyService.aptAll();
		return clist;
	}
	//컴퍼니 주택 리스트
	@PostMapping("solAll")
	@ResponseBody
	public ArrayList<CompanyVo> solAll(){
		ArrayList<CompanyVo> clist = companyService.solAll();
		return clist;
	}
	
	
	//스토어 모든 리스트
	@PostMapping("alllist")
	@ResponseBody
	public ArrayList<ProductVo> allList(){
		ArrayList<ProductVo> list = storeService.producerAllList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	
	//스토어 가구 리스트
	@PostMapping("furniturelist")
	@ResponseBody
	public ArrayList<ProductVo> furniturelist() {
		ArrayList<ProductVo> list = storeService.selectFurnitureList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	//스토어 가전 리스트
	@PostMapping("applianceslist")
	@ResponseBody
	public ArrayList<ProductVo> applianceslist() {
		ArrayList<ProductVo> list = storeService.selectappliancesList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	//스토어 페브릭 리스트
	@PostMapping("Fabriclist")
	@ResponseBody
	public ArrayList<ProductVo> Fabriclist() {
		ArrayList<ProductVo> list = storeService.selectFabricList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	//스토어 반려용품 리스트
	@PostMapping("Patlist")
	@ResponseBody
	public ArrayList<ProductVo> Patlist() {
		ArrayList<ProductVo> list = storeService.selectPatList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	
	//검색
	@RequestMapping("selectGO")
	public String select(@RequestParam String search, Model model) {
		System.out.println("검색어 ? " + search);
		//회사 부분
		ArrayList<CompanyVo> Clist = userService.selectComSearchList(search);
		//상품 부분
		ArrayList<ProductVo> Slist = userService.selectStoreSearchList(search);
		for(int i=0;i<Slist.size();i++) {
			Slist.get(i).setProduct_Price2(format.format(Slist.get(i).getProduct_Price()));
		}
		model.addAttribute("Clist",Clist);
		model.addAttribute("Slist",Slist);
		return "/select";
	}
	
}//class
