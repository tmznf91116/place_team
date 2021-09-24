package com.site.p0823.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties.Producer;
import org.springframework.stereotype.Service;

import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.user_DetailsVo;
import com.site.p0823.mapper.StoreMapper;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	StoreMapper storeMapper;

	//스토어 메인에 출력할 상품 리스트
	@Override
	public ArrayList<ProductVo> producerAllList() {
		ArrayList<ProductVo> list  = storeMapper.producerAllList();
		return list;
	}

	//스토어 메인에서 상품 클릭시 보여줄 상품 상세
	@Override
	public ProductVo producerOneSearch(int product_Number) {
		ProductVo productVo = storeMapper.producerOneSearch(product_Number);
		return productVo;
	}

	//스토어 가구 리스트
	@Override
	public ArrayList<ProductVo> selectFurnitureList() {
		ArrayList<ProductVo> list = storeMapper.selectFurnitureList();
		return list;
	}
	//스토어 가전 리스트
	@Override
	public ArrayList<ProductVo> selectappliancesList() {
		ArrayList<ProductVo> list = storeMapper.selectappliancesList();
		return list;
	}

	//스토어 페브릭 리스트
	@Override
	public ArrayList<ProductVo> selectFabricList() {
		ArrayList<ProductVo> list = storeMapper.selectFabricList();
		return list;
	}
	//스토어 펫 리스트
	@Override
	public ArrayList<ProductVo> selectPatList() {
		ArrayList<ProductVo> list = storeMapper.selectPatList();
		return list;
	}
	
	//스토어 생활용품 리스트
	@Override
	public ArrayList<ProductVo> selectSuppliesList() {
		ArrayList<ProductVo> list = storeMapper.selectSuppliesList();
		return list;
	}

	//장바구니에 있는 상품 번호가 같은 이미지 가지구 오기
	@Override
	public ArrayList<ProductVo> selectimgGet(Integer product_Number) {
		ArrayList<ProductVo> list = storeMapper.selectimgGet(product_Number);
		return list;
	}

	//결제 완료 됐으면 배송현황 테이블 이동
	@Override
	public void insertDeliverySetAll(int s_id, user_DetailsVo user_DetailsVo, ProductVo productVo,
			int count, String other) {
		
		storeMapper.insertDeliverySetAll(s_id,user_DetailsVo,productVo,count,other);
	}
	
	

	
	
}//class
