package com.service;

import java.util.List;

import com.dao.GoodsDao;
import com.vo.Goods;

public interface GoodsService {
	
	//상품등록
	List<Goods> selectGoodsList(GoodsDao goodsDao);
	
	//상품 디테일
	Goods selectGoods(int id);
}
