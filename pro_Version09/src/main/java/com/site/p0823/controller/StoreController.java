package com.site.p0823.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserCartVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_DetailsVo;
import com.site.p0823.service.MyPageService;
import com.site.p0823.service.StoreService;
import com.site.p0823.service.UserService;

@Controller
public class StoreController {

   @Autowired
   StoreService storeService;
   @Autowired
   MyPageService myPageService;
   @Autowired
   UserService UserService;

   DecimalFormat format = new DecimalFormat("###,###");

   // 스토어 메인
   @RequestMapping("store1")
   public String store1(Model model) {
      Map<String, Object> map = new HashMap<String, Object>();
      ArrayList<ProductVo> list = storeService.producerAllList();
      for (int i = 0; i < list.size(); i++) {
         list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
      }
      model.addAttribute("list", list);
      return "/store/store1";
   }

   // 스토어 전체 리스트
   @PostMapping("alllistStore")
   @ResponseBody
   public ArrayList<ProductVo> allList() {
      ArrayList<ProductVo> list = storeService.producerAllList();
      for (int i = 0; i < list.size(); i++) {
         list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
      }
      return list;
   }

   // 스토어 가구 리스트
   @PostMapping("furniturelistStore")
   @ResponseBody
   public ArrayList<ProductVo> furniturelist() {
      ArrayList<ProductVo> list = storeService.selectFurnitureList();
      for (int i = 0; i < list.size(); i++) {
         list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
      }
      return list;
   }

   // 스토어 가전 리스트
   @PostMapping("applianceslistStore")
   @ResponseBody
   public ArrayList<ProductVo> applianceslist() {
      ArrayList<ProductVo> list = storeService.selectappliancesList();
      for (int i = 0; i < list.size(); i++) {
         list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
      }
      return list;
   }

   // 스토어 페브릭 리스트
   @PostMapping("FabriclistStore")
   @ResponseBody
   public ArrayList<ProductVo> Fabriclist() {
      ArrayList<ProductVo> list = storeService.selectFabricList();
      for (int i = 0; i < list.size(); i++) {
         list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
      }
      return list;
   }

   // 스토어 페브릭 리스트
   @PostMapping("supplieslistStore")
   @ResponseBody
   public ArrayList<ProductVo> supplieslist() {
      ArrayList<ProductVo> list = storeService.selectSuppliesList();
      for (int i = 0; i < list.size(); i++) {
         list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
      }
      return list;
   }

   // 스토어 반려동물 리스트
   @PostMapping("PatlistStore")
   @ResponseBody
   public ArrayList<ProductVo> Patlist() {
      ArrayList<ProductVo> list = storeService.selectPatList();
      for (int i = 0; i < list.size(); i++) {
         list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
      }
      return list;
   }

   // 스토어 상세
   @RequestMapping("store2")
   public String store2(Model model, @RequestParam int product_Number) {
      ProductVo productVo = storeService.producerOneSearch(product_Number);
      productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
      model.addAttribute("productVo", productVo);
      return "/store/store2";
   }

   // 상품상세 카운트 증가
   @RequestMapping("QuantityUp")
   @ResponseBody
   public ProductVo QuantityUp(@RequestParam int product_Number, @RequestParam int product_Price) {
      ProductVo productVo = storeService.producerOneSearch(product_Number);
      productVo.setProduct_Price(productVo.getProduct_Price() + product_Price);
      productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
      return productVo;
   }

   // 상품상세 카운트 다운
   @RequestMapping("QuantityDown")
   @ResponseBody
   public ProductVo QuantityDown(@RequestParam int product_Number, @RequestParam int product_Price) {
      ProductVo productVo = storeService.producerOneSearch(product_Number);
      productVo.setProduct_Price(product_Price - productVo.getProduct_Price());
      productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
      return productVo;
   }

   // 장바구니
   @PostMapping("cartGo")
   @ResponseBody
   public int cart(Model model, @RequestParam int product_Number, @RequestParam int s_id,
         @RequestParam(defaultValue = "1") int count) {

      ProductVo productVo = storeService.producerOneSearch(product_Number);
      ArrayList<UserCartVo> Cartlist = myPageService.selectMyCartList(s_id);
      int result = 0;
      System.out.println("사이즈" + Cartlist.size());
      for (int i = 0; i < Cartlist.size(); i++) {
         if (Cartlist.get(i).getProduct_Number() == product_Number) {
            result = myPageService.updateCartGo(productVo, s_id, count);
            result = 1;
         }
      }
      if (result == 0) {
         result = myPageService.insertCartGo(productVo, s_id, count);
      }
      model.addAttribute("productVo", productVo);
      model.addAttribute("result", result);

      // return "redirect:/store1";
      return result;
   }

   // 결제 페이지 이동
   // 상품주문
//   @RequestMapping("ProductOrder")
//   public String productOrder(@RequestParam int s_id, @RequestParam int product_Number, 
//         @RequestParam(defaultValue = "1") int count, Model model, user_DetailsVo user_DetailsVo) {
//      //주소값 있으면 뽑아오고 없으면 저장 될수있게 id 기준
//      user_DetailsVo dateYes = UserService.selectInformationYes(s_id);
//      
//      //배송에서 이메일을 가져오기 위한 부분
//      UserVo userVo = UserService.selectUserOneSearch(s_id);
//      int Cut = userVo.getUser_email().indexOf("@");
//      String mail = userVo.getUser_email().substring(0, Cut);
//      String mail2 = userVo.getUser_email().substring(Cut+1);
//      
//      //스토어 상세부분 
//      ProductVo productVo = storeService.producerOneSearch(product_Number);
//      int onePrice = productVo.getProduct_Price();
//      String onePrice2 = format.format(productVo.getProduct_Price());
//      productVo.setProduct_Price(productVo.getProduct_Price()*count);
//      productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
//      
//      model.addAttribute("user_DetailsVo",dateYes);
//      model.addAttribute("mail",mail);
//      model.addAttribute("mail2",mail2);
//      model.addAttribute("productVo",productVo);
//      model.addAttribute("count",count);
//      model.addAttribute("onePrice2",onePrice2);
//      return "/store/ProductOrder";
//   }
   @RequestMapping("ProductOrder")
   public String productOrder(@RequestParam int s_id, @RequestParam(defaultValue = "0") int product_Number,
         @RequestParam(defaultValue = "1") int count, Model model, user_DetailsVo user_DetailsVo) {
      // 주소값 있으면 뽑아오고 없으면 저장 될수있게 id 기준
      user_DetailsVo dateYes = UserService.selectInformationYes(s_id);

      // 배송에서 이메일을 가져오기 위한 부분
      UserVo userVo = UserService.selectUserOneSearch(s_id);
      int Cut = userVo.getUser_email().indexOf("@");
      String mail = userVo.getUser_email().substring(0, Cut);
      String mail2 = userVo.getUser_email().substring(Cut + 1);

      String All_price2 = "";
      String All_product_Number = "";
      String All_product_Num = "";
      int All_price = 0;
      int CartNum = 1;
      ArrayList<UserCartVo> Cartlist = myPageService.selectMyCartList(s_id);
      ProductVo productVo = storeService.producerOneSearch(Cartlist.get(0).getProduct_Number());
      // 스토어 상세부분
      // 장바구니에서 결제
      if (product_Number == 0) {
         System.out.println("1번");
         
         productVo.setProduct_Number(Cartlist.get(0).getProduct_Number());
         for (int i = 0; i < Cartlist.size(); i++) {
            
            count += Cartlist.get(i).getProduct_Num();
            
            Cartlist.get(i).setProduct_Price3(format.format(Cartlist.get(i).getProduct_Price()));
            
            Cartlist.get(i).setProduct_Price(Cartlist.get(i).getProduct_Num() * Cartlist.get(i).getProduct_Price());
            Cartlist.get(i).setProduct_Price2(format.format(Cartlist.get(i).getProduct_Price()));
            All_price += Cartlist.get(i).getProduct_Price();
         }
         All_price2 = (format.format(All_price));
      }
      // 스토어 바로결제
      String onePrice2 = "";
      if (product_Number != 0) {
         System.out.println("2번");
         
         Cartlist = null;
         
         productVo = storeService.producerOneSearch(product_Number);
         int onePrice = productVo.getProduct_Price();
         onePrice2 = format.format(productVo.getProduct_Price());
         productVo.setProduct_Price(productVo.getProduct_Price() * count);
         productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
         All_price2 = productVo.getProduct_Price2();
      }
      System.out.println(productVo);
      
      model.addAttribute("user_DetailsVo", dateYes);
      model.addAttribute("mail", mail);
      model.addAttribute("mail2", mail2);
      model.addAttribute("productVo", productVo);
      model.addAttribute("count", count);
      model.addAttribute("onePrice2", onePrice2);

      model.addAttribute("All_price", All_price);
      model.addAttribute("All_price2", All_price2);
      model.addAttribute("CartNum", CartNum);
      model.addAttribute("Cartlist", Cartlist);
      return "/store/ProductOrder";
   }

   @RequestMapping("ProductOrderCheck")
   @ResponseBody
   public void ProductOrderCheck(@RequestParam int s_id, @RequestParam int count, @RequestParam int product_Number,
         @RequestParam(defaultValue = "0") int All_price, user_DetailsVo user_DetailsVo, @RequestParam String other) {

      System.out.println(user_DetailsVo);

      // 주소값 있으면 뽑아오고 없으면 저장 될수있게 id 기준
      user_DetailsVo dateYes = UserService.selectInformationYes(s_id);
      if (dateYes == null) {
         UserService.insertDetailsSet(user_DetailsVo, s_id);
      }

      ProductVo productVo = storeService.producerOneSearch(product_Number);
      if(All_price != 0) {
         productVo.setProduct_Price(All_price);
      }
      
      // 결제 완료 됐으면 배송현황 테이블 이동
      storeService.insertDeliverySetAll(s_id, user_DetailsVo, productVo, count, other);

      if(All_price != 0) {
      // 장바구니에있는 데이터 삭제
      myPageService.deleteSelectIdAllBuy(s_id);
      }
      
   }

   // 상품결제 kakaopay Test
   @RequestMapping("kakaoPay")
   @ResponseBody
   public String kakaoPay(@RequestParam int s_id, @RequestParam int count, @RequestParam int product_Number,@RequestParam int All_price) {
      System.out.println(s_id);
      System.out.println(count);
      System.out.println(All_price);
      
      ProductVo productVo = storeService.producerOneSearch(product_Number);
      int product_Price = productVo.getProduct_Price() * count;
      try {
         // 주소
         URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
         // 서버연결
         HttpURLConnection serverCon = (HttpURLConnection) url.openConnection();
         // 연결방식
         serverCon.setRequestMethod("POST");
         // 카카오디벨로퍼 api key 값
         serverCon.setRequestProperty("Authorization", "KakaoAK ebd3b5c7f3eafebee05bf8fe04db53f5");
         // 연결타입
         serverCon.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
         // 서버에 보낼게 있는지 있으면 true 기본flase설정
         serverCon.setDoOutput(true);
         // 서버로 보낼 데이터
         if(All_price == 0) {
            All_price = product_Price;
         }
         
         String UserPayData = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name="
               + productVo.getProduct_Name() + "&quantity=1&total_amount=" + All_price + "&tax_free_amount=0&approval_url=http://localhost:8888/ProductOrderOk&cancel_url=http://localhost:8888&fail_url=http://localhost:8888";
         
         byte[] euckrStrBuffer = UserPayData.getBytes("euc-kr");
         // 주는애
         OutputStream outPutStream = serverCon.getOutputStream();
         // 데이터주는애
         DataOutputStream dataOutputStream = new DataOutputStream(outPutStream);
         // 주고받을때 바이트형식으로 해야한다.
         dataOutputStream.write(euckrStrBuffer);
         // close를 하게 되면 자동적으로 flush(가진 데이터를 보낸 뒤 비워진다.)를 시켜준다.
         dataOutputStream.close();

         int result = serverCon.getResponseCode();
         // 받는애
         InputStream inputStream;
         // 데이터가 정상적으로 전송됐다면 결과값이 200이 나온다 그 외의 값은 에러처리되며 에러이다.
         if (result == 200) {
            inputStream = serverCon.getInputStream();
         } else {
            inputStream = serverCon.getErrorStream();
         }
         // 읽을 줄 아는아이
         InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
         // 형변환해주는아이
         BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
         return bufferedReader.readLine();

      } catch (MalformedURLException e) {
         e.printStackTrace();
      } catch (IOException e) {
         e.printStackTrace();
      }
      return "{\"result\":\"NO\"}";
   }

   // 결제 완료 페이지
   @RequestMapping("ProductOrderOk")
   public String ProductOrderOk(@RequestParam String pg_token) {
      return "/store/ProductOrderOk";
   }
//   @RequestMapping("ProductOrderOk")
//   public String ProductOrderOk (Model model, user_DetailsVo user_DetailsVo, @RequestParam int s_id,
//         @RequestParam int count, ProductVo productVo, @RequestParam String other) {
//      
//      //주소값 있으면 뽑아오고 없으면 저장 될수있게 id 기준
//      user_DetailsVo dateYes = UserService.selectInformationYes(s_id);
//      if(dateYes == null) { 
//         UserService.insertDetailsSet(user_DetailsVo,s_id); 
//      }
//      //결제 완료 됐으면 배송현황 테이블 이동
//      storeService.insertDeliverySetAll(s_id,user_DetailsVo,productVo,count,other);
//      
//      
//      return "/store/ProductOrderOk";
//   }

}// class