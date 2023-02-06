package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.dao.GoodsDao;
import com.vo.Goods;


@Mapper
public interface GoodsMapper {
	
	//member 테이블 넘버링
	Integer selectTableNumbering();
	
	//상품 정보 등록
	int insertGoods(GoodsDao goodsDao);
	
	//상품 정보 등록
	List<Goods> selectCategoryGoodsList(String categoryCode);
}
