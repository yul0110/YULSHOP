package com.service;

import java.util.List;

import com.dao.GoodsDao;
import com.vo.Goods;

public interface GoodsService {
	
	//카테고리 아이디를 담아오는 리스트
	List<Goods> selectGoodsList(GoodsDao goodsDao);
	
	//상품 디테일
	Goods selectGoods(int id);
}
