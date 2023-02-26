package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.ImgDao;
import com.dao.InquiryDao;
import com.mapper.CsMapper;
import com.mapper.ImgGroupMapper;
import com.mapper.ImgMapper;
import com.vo.Faq;

@Service
public class CsServiceImpl implements CsService {
	
	@Autowired
	CsMapper csMapper;


	@Autowired
	ImgGroupMapper imgGroupMapper;
	
	@Autowired
	ImgMapper imgMapper;

	
	@Override
	public List<Faq> selectFaqList(String type) {
		return csMapper.selectFaqList(type);
	}

	@Override
	public int insertInquiry(InquiryDao inquiryDao) {
		
		//이미지 분리를 위한 이미지그룹 아이디
		Integer listImgGroupId		= 0;
		
		//문의등록 완료 플레그
		int flag = 0;
		
		/*
		 * 1. 문의 등록을 해야한다.
		 * 2. 데이터를 받아옴
		 * 3. inqury 테이블에 문의 데이터를 insert하려는데 이미지 그룹id가 필요하다.
		 * 4. imgGroupMapper를 불러와 넘버링을 한다 (첫 데이터 1 넣어줌)
		 * 5. 리스트 이미지 그룹 id 생성
		 * 6. 
		 * 
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
		
		for(String listImg : inquiryDao.getListImgPathArr() ) {
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
		
		//그룹값을 넣어줌
		inquiryDao.setImgGroupId(listImgGroupId);
		
		Integer inquiryNumbering = csMapper.selectInquiryNumbering();
		inquiryNumbering = inquiryNumbering +1;
		inquiryDao.setId(inquiryNumbering);
		
		flag = csMapper.insertInquiry(inquiryDao);
		
		return flag;
	
	}


	

}
