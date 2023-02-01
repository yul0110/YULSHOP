package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.dao.GoodsDao;
import com.dao.ImgDao;
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
		
		/*
		 * 1.상품 등록을 해야한다.
		 * 2. 데이터를 받아왔어
		 * 3. 상품테이블에 상품데이터를 insert 하려고 했는데 listImg와 detailImg의 데이터가 없어서 넣을수가 없다.
		 * 4. 이미지를 어떻게 넣나 확인 해보니 그룹을 이용하여 넣는다. 이미지 그룹과 이미지 테이블이 따로 존재
		 * 5. 3번을 하기 위해서 이미지그룹을 만들어줌 그리고 만들어준 이미지그룹에 이미지들을 넣어줌
		 * 6. 이미지그룹에 이미지들이 일렬로 들어왔어 그러면 하나의 그룹을 생겨서 id가 생김
		 * 7. 상품테이블에 없던 데이터중 listImg에 이미지그룹 id를 넣어서 상품테이블도 인설트할수있게됬음
		 * */
		
		
		
		
		
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
		
		
		//옵션테이블을 생성하고 값을 넣어주고 옵션테이블 Id를 받아서 넣어주는 작업을 해야함
		goodsDao.setOptionsId(1);
		
		flag = goodsMapper.insertGoods(goodsDao);
		
		return flag;
	}

	

}
