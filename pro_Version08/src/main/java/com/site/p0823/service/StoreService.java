package com.site.p0823.service;

import java.util.ArrayList;

import org.springframework.boot.autoconfigure.kafka.KafkaProperties.Producer;

import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.user_DetailsVo;

public interface StoreService {

	
	//스토어 메인에 출력할 상품 리스트
	ArrayList<ProductVo> producerAllList();
	
	//스토어 메인에서 상품 클릭시 보여줄 상품 상세
	ProductVo producerOneSearch(int product_Number);

	//스토어 가전 리스트
	ArrayList<ProductVo> selectFurnitureList();
	
	//스토어 가전 리스트
	ArrayList<ProductVo> selectappliancesList();

	//스토어 페브릭 리스트
	ArrayList<ProductVo> selectFabricList();
	
	//스토어 생활용품 리스트
	ArrayList<ProductVo> selectSuppliesList();

	//스토어 반려동물 리스트
	ArrayList<ProductVo> selectPatList();

	//장바구니에 있는 상품 번호가 같은 이미지 가지구 오기
	ArrayList<ProductVo> selectimgGet(Integer product_Number);

	//결제 완료 됐으면 배송현황 테이블 이동
	void insertDeliverySetAll(int s_id, user_DetailsVo user_DetailsVo, ProductVo productVo, int count,String other);


}//class
