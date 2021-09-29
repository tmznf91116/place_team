package com.site.p0823.Vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVo {
	
	// 상품번호 
    private Integer product_Number;

    // 상품구별컬럼 
    private String category_Code;

    // 상품이름 
    private String product_Name;

    // 재고 
    private Integer product_Stock;

    // 브랜드 
    private String product_Brand;

    // 상품이미지 
    private String product_Main;

    // 상품설명이미지 
    private String product_Serve;

    // 상품설명글 
    private String product_Desc;

    // 등록날짜 
    private Timestamp product_Date;

    // 옵션 
    private String product_Option;

    // 상품가격 
    private Integer product_Price;
    private String product_Price2;

    
    
    
    
    
    
    
    
    
    
    
}
