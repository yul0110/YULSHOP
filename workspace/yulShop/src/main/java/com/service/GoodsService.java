package com.service;

import java.util.List;

import com.dao.GoodsDao;
import com.vo.Goods;

public interface GoodsService {
	
	//상품등록
	List<Goods> selectGoodsList(GoodsDao goodsDao);
}
