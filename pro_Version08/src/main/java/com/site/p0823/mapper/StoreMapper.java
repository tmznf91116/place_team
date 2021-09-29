package com.site.p0823.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.user_DetailsVo;

@Mapper
public interface StoreMapper {

	
	//스토어 메인에 출력할 상품 리스트
	ArrayList<ProductVo> producerAllList();

	//스토어 메인에서 상품 클릭시 보여줄 상품 상세
	ProductVo producerOneSearch(int product_Number);

	//스토어 가구 리스트
	ArrayList<ProductVo> selectFurnitureList();

	//스토어 가전 리스트
	ArrayList<ProductVo> selectappliancesList();

	//스토어 페브릭 리스트
	ArrayList<ProductVo> selectFabricList();

	//스토어 펫 리스트
	ArrayList<ProductVo> selectPatList();
	
	//스토어 생활용품 리스트
	ArrayList<ProductVo> selectSuppliesList();

	//장바구니에 있는 상품 번호가 같은 이미지 가지구 오기
	ArrayList<ProductVo> selectimgGet(Integer product_Number);

	//결제 완료 됐으면 배송현황 테이블 이동
	void insertDeliverySetAll(@Param("s_id") int s_id,@Param("user_DetailsVo") user_DetailsVo user_DetailsVo, 
			@Param("productVo")  ProductVo productVo, @Param("count")  int count,
			@Param("other") String other);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//class
