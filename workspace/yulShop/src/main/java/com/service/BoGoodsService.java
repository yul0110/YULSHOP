package com.service;

import com.dao.GoodsDao;
import com.dao.MemberDao;

public interface BoGoodsService {
	
	//상품등록
	int insertGoods(GoodsDao goodsDao);
}
