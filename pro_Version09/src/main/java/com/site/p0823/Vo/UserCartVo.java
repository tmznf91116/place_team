package com.site.p0823.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 장바구니 
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserCartVo {
	
	    // 고객번호(고유) 
	    private Integer user_Id;

	    // 제품번호 
	    private Integer product_Number;

	    // 제품숫자 
	    private Integer product_Num;

	    // 제품이름 
	    private String product_Name;

	    // 제품가격 
	    private Integer product_Price;
	    private String product_Price2;
	    private String product_Price3;
	
	    // 상품이미지 
	    private String product_Main;

}
