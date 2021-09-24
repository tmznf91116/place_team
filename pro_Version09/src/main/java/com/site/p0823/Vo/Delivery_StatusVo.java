package com.site.p0823.Vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Delivery_StatusVo {
	// 배송상세

	// 고객번호(고유)
	private Integer user_Id;

	// 고객주소1(우편)
	private String user_Address1;

	// 고객주소2(주소)
	private String user_Address2;

	// 고객주소3(상세)
	private String user_Address3;

	// 배송요청사항
	private String delivery_Request;

	// 배송상태
	private String delivery_Location;

	// 총가격
	private Integer total_Price;
	private String total_Price2;

	// 배송시작 날짜
	private Timestamp delivery_Date;

	// 상품번호
	private Integer product_Number;

	// 상품개수
	private Integer product_Count;

	// 배송종료 날짜
	private Timestamp delivery_Date_End;

	// 상품이름
	private String product_Name;
	
	// 상품이미지 
    private String product_Main;

}
