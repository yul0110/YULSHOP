package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.dao.GoodsDao;
import com.dao.ImgDao;
import com.dao.MemberDao;
import com.mapper.GoodsMapper;
import com.mapper.ImgGroupMapper;
import com.mapper.ImgMapper;

@Service
@Repository
public class BoGoodsServiceImpl implements BoGoodsService {

	@Autowired
	ImgGroupMapper imgGroupMapper;
	
	@Autowired
	ImgMapper imgMapper;
	
	@Autowired
	GoodsMapper goodsMapper;
	
	@Override
	public int insertGoods(GoodsDao goodsDao) {
		
		//이미지 분리를 위한 이미지그룹 아이디
		Integer listImgGroupId		= 0;
		Integer detailImgGroupId	= 0;
		
		//상품등록 완료 플레그
		int flag = 0;
		
		//리스트 이미지 그룹 넘버링
		listImgGroupId = imgGroupMapper.selectTableNumbering();
		if(listImgGroupId == null) {
			//테이블 첫 생성후 빈테이블인 경우 강제로 데이터를 넣어줌
			listImgGroupId = 1;
		}else {
			listImgGroupId = listImgGroupId + 1;
		}
		//리스트 이미지 그룹 id 생성
		imgGroupMapper.insertImgGroup(listImgGroupId);
		
		for(String listImg : goodsDao.getListImgPathArr() ) {
			ImgDao imgDao = new ImgDao();
			Integer imgNumbering = imgMapper.selectTableNumbering();
			if(imgNumbering == null) {
				//테이블 첫 생성후 빈테이블인 경우 강제로 데이터를 넣어줌
				imgNumbering = 1;
			}else {
				imgNumbering = imgNumbering + 1;
			}
			imgDao.setId(imgNumbering);
			imgDao.setImgGroupId(listImgGroupId);
			imgDao.setNm("list");
			imgDao.setPath(listImg);
			imgMapper.insertImg(imgDao);
		}
		
		//리스트이미지 등록 END
		
		//이미지그룹 넘버링을 담아줌
		detailImgGroupId = imgGroupMapper.selectTableNumbering();
		detailImgGroupId = detailImgGroupId + 1;
		//이미지 그룹 생성
		imgGroupMapper.insertImgGroup(detailImgGroupId);
		for(String detailImg : goodsDao.getDatailImgPathArr() ) {
			ImgDao imgDao = new ImgDao();
			Integer imgNumbering = imgMapper.selectTableNumbering();
			imgNumbering = imgNumbering + 1;
			imgDao.setId(imgNumbering);
			imgDao.setImgGroupId(detailImgGroupId);
			imgDao.setNm("detail");
			imgDao.setPath(detailImg);
			imgMapper.insertImg(imgDao);
		}
		
		//그룹값을 넣어줌
		goodsDao.setListImg(listImgGroupId);
		goodsDao.setDetailImg(detailImgGroupId);
		
		Integer goodsNumbering = goodsMapper.selectTableNumbering();
		
		if(goodsNumbering == null) {
			//테이블 첫 생성후 빈테이블인 경우 강제로 데이터를 넣어줌
			goodsNumbering = 1;
		}else {
			goodsNumbering = goodsNumbering + 1;
		}
		
		goodsDao.setId(goodsNumbering);
		
		//더미데이터
		goodsDao.setCateId(1);
		goodsDao.setOptionsId(1);
		
		flag = goodsMapper.insertGoods(goodsDao);
		
		return flag;
	}

	

}
