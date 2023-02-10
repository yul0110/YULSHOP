package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.dao.GoodsDao;
import com.mapper.GoodsMapper;
import com.vo.Goods;

@Service
@Repository
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	GoodsMapper goodsMapper;

	@Override
	public List<Goods> selectGoodsList(GoodsDao goodsDao) {
		return goodsMapper.selectCategoryGoodsList(goodsDao.getCateId());
	}

	@Override
	public Goods selectGoods(int id) {
		return goodsMapper.selectGoods(id);
	}
	


}
