package com.site.p0823.controller;

import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.service.AdminService;
import com.site.p0823.service.CompanyService;

@Controller
public class adminController {

	@Autowired
	AdminService adminService;
	@Autowired
	CompanyService companyService;
	
	DecimalFormat format = new DecimalFormat("###,###");
	
	//관리자페이지 메인
	@RequestMapping("adminPage")
	public String adminPage() {
		return "/admin/adminPage";
	}
	
	
	//관리자페이지 상품등록
	@RequestMapping("productInsert")
	public String productInsert() {
		return "/admin/productInsert";
	}
	//관리자페이지 상품 저장
	@PostMapping("productInsert")
	public String productInsert(ProductVo productVo, @RequestParam MultipartFile Main, @RequestParam MultipartFile Serve ) throws Exception {
		System.out.println("시작");
		//파일이 첨부가 되어 있으면
			if(Main.getSize()!=0) {

				String main1 = String.format("%s", Main);
				String serve1 = String.format("%s", Serve);
				
				//파일저장위치
				//String fileUrl = "C:/workspace/pro_Version09/pro_Version09/src/main/resources/static/productImg/";
				String fileUrl = "C:/Users/jmp/git/repository/pro_Version09/src/main/resources/static/productImg";
				System.out.println("fileUrl : " + fileUrl);
				//복사할 파일
				File f = new File(fileUrl+Main);
				File f2 = new File(fileUrl+Serve);
				//파일 업로드
				Main.transferTo(f);
				Serve.transferTo(f2);
				
				//db에 저장하기 위해 vo에 파일이름을 저장시킴.
				productVo.setProduct_Main(main1);
				productVo.setProduct_Serve(serve1);
			}
				
		adminService.insertProductOne(productVo);
		return "/admin/adminPage";
	}
	
	
	//관리자페이지 상품삭제
	@RequestMapping("productDelete")
	public String productDelete() {
		return "/admin/productDelete";
	}
	//관리자페이지 상품삭제 검색
	@PostMapping("Searchlist")
	@ResponseBody
	public ArrayList<ProductVo> Searchlist(@RequestParam String deleteProductName) {
		ArrayList<ProductVo> list = adminService.selectListAll(deleteProductName);
		return list;
	}
	//관리자페이지 선택 상품 수정
	@GetMapping("selectModfiy")
	public String UpdateModfiy(@RequestParam int deleteNum, @RequestParam int ModfiyPrice, @RequestParam int ModfiyPriceStock, Model model) {
		int modfiyCk = adminService.UpdateModfiy(deleteNum,ModfiyPrice,ModfiyPriceStock);
		model.addAttribute("modfiyCk",modfiyCk);
		return "/admin/productDelete";
	}
	//관리자페이지 선택 상품 삭제
	@GetMapping("selectDelete")
	public String selectDelete(@RequestParam int deleteNum) {
		adminService.selectDeleteOne(deleteNum);
		return "/admin/productDelete";
	}
	
	
	//관리자페이지 시공업체삭제
	@RequestMapping("companyDelete")
	public String companyDelete() {
		//adminService.companyDeleteOne();
		return "/admin/companyDelete";
	}
	//관리자페이지 컴퍼니 검색
	@PostMapping("companyAllList")
	@ResponseBody
	public ArrayList<CompanyVo> companyAllList(@RequestParam String deletecompanyName) {
		ArrayList<CompanyVo> list = adminService.selectCompanyAllList(deletecompanyName);
		return list;
	}
	//관리자페이지 시공업체삭제
	@GetMapping("companyDeleteOne") 
		public String companyDeleteOne(@RequestParam int ccNum) { 
		System.out.println("ccNum : " + ccNum); 
		adminService.companyDeleteOne(ccNum); 
		return "/admin/companyDelete"; 
	}
	//관리자페이지 시공업체수정
	@GetMapping("companyModfiy") 
	public String companyModfiy(@RequestParam int ccNum, @RequestParam String pname, Model model) { 
		int modfiyCk = adminService.companyModfiyOne(ccNum, pname); 
		
		model.addAttribute("modfiyCk",modfiyCk);
		return "/admin/companyDelete"; 
	}
	
	//관리자페이지 배송관리
	@RequestMapping("officerDelivery")
	public String officerDelivery(Model model) {
		ArrayList<Delivery_StatusVo> list = adminService.selectDeliveryList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setTotal_Price2(format.format(list.get(i).getTotal_Price()));
		}
		
		model.addAttribute("list", list);
		return "/admin/officerDelivery";
	}
	//관리자페이지 배송현황 업데이트
	@RequestMapping("LocationUpDate")
	public String LocationUpDate(Delivery_StatusVo delivery_StatusVo, @RequestParam String Location,Model model) {
	      adminService.updateLocationUpDate(delivery_StatusVo,Location);
	      return "redirect:/officerDelivery";
	   }
	
	
	
	//관리자페이지 문의글
	@RequestMapping("inquiriesDetails")
	public String inquiriesDetails(@RequestParam(value="page",defaultValue = "1") int page,
			@RequestParam @Nullable String category,@RequestParam @Nullable String searchWord,Model model) {
		//시공
		Map<String , Object> map = adminService.selectInquiryOfficer(page,category,searchWord);
		
		
		model.addAttribute("map", map);
		return "/admin/inquiriesDetails";
	}
	//관리자페이지 문의글
	@RequestMapping("inquiriesDetails2")
	public String inquiriesDetails2(@RequestParam(value="page",defaultValue = "1") int page,
			@RequestParam @Nullable String category,@RequestParam @Nullable String searchWord,Model model) {
		//시공
		Map<String , Object> map = adminService.selectuserInquiryOfficer(page,category,searchWord);
		
		model.addAttribute("map", map);
		return "/admin/inquiriesDetails2";
	}
	
	
	
}//class
