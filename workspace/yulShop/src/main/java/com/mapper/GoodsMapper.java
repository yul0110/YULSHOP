package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.dao.GoodsDao;


@Mapper
public interface GoodsMapper {
	
	//member 테이블 넘버링
	Integer selectTableNumbering();
	
	//회원가입 정보 등록
	int insertGoods(GoodsDao goodsDao);
}
