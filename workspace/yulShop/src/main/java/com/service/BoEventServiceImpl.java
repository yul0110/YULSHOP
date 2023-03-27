package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.dao.EventDao;
import com.dao.ImgDao;
import com.dao.OptionDao;
import com.mapper.EventMapper;
import com.mapper.ImgGroupMapper;
import com.mapper.ImgMapper;
import com.vo.Event;

@Service
@Repository
public class BoEventServiceImpl implements BoEventService {

	@Autowired
	ImgGroupMapper imgGroupMapper;
	
	@Autowired
	ImgMapper imgMapper;
	
	@Autowired
	EventMapper eventMapper;


	@Override
	public Event selectEvent(int id) {
		return eventMapper.selectEvent(id);
	}
	
	@Override
	public int insertEvent(EventDao eventDao) {
		
		//이미지 분리를 위한 이미지그룹 아이디
		Integer listImgGroupId		= 0;
		Integer detailImgGroupId	= 0;
		
		//이벤트등록 완료 플레그
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
		
		for(String listImg : eventDao.getListImgPathArr() ) {
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
			imgDao.setNm("evevtList");
			imgDao.setPath(listImg);
			imgMapper.insertImg(imgDao);
		}
		//리스트이미지 등록 END
		
		
		//이미지그룹 넘버링을 담아줌
		detailImgGroupId = imgGroupMapper.selectTableNumbering();
		detailImgGroupId = detailImgGroupId + 1;
		//이미지 그룹 생성
		imgGroupMapper.insertImgGroup(detailImgGroupId);
		for(String detailImg : eventDao.getDetailImgPathArr() ) { //향상된for문
			ImgDao imgDao = new ImgDao();
			Integer imgNumbering = imgMapper.selectTableNumbering();
			imgNumbering = imgNumbering + 1;
			imgDao.setId(imgNumbering);
			imgDao.setImgGroupId(detailImgGroupId);
			imgDao.setNm("eventDetail");
			imgDao.setPath(detailImg);
			imgMapper.insertImg(imgDao);
		}
		
		//그룹값을 넣어줌
		eventDao.setListImg(listImgGroupId);
		eventDao.setDetailImg(detailImgGroupId);
		
		Integer eventNumbering = eventMapper.selectTableNumbering();
		
		if(eventNumbering == null) {
			//테이블 첫 생성후 빈테이블인 경우 강제로 데이터를 넣어줌
			eventNumbering = 1;
		}else {
			eventNumbering = eventNumbering + 1;
		}
		
		eventDao.setId(eventNumbering);	
		//더미데이터
		flag = eventMapper.insertEvent(eventDao);
			
		return flag;
		
	}

	
	
	
	//이벤트 수정
	@Override
	public int updateBoEvent(EventDao eventDao) {
		
		eventDao.setUpdateId(9999);
		
		//이미지 분리를 위한 이미지그룹 아이디
		Integer listImgGroupId		= 0;
		Integer detailImgGroupId	= 0;
		
		//이벤트등록 완료 플레그
		int flag = 0;

		//리스트 이미지 그룹 넘버링
		listImgGroupId = imgGroupMapper.selectTableNumbering();
		listImgGroupId = listImgGroupId + 1;
		//리스트 이미지 그룹 id 생성
		imgGroupMapper.insertImgGroup(listImgGroupId);
		
		for(String listImg : eventDao.getListImgPathArr() ) {
			ImgDao imgDao = new ImgDao();
			Integer imgNumbering = imgMapper.selectTableNumbering();
			imgNumbering = imgNumbering + 1;
			imgDao.setId(imgNumbering);
			imgDao.setImgGroupId(listImgGroupId);
			imgDao.setNm("evevtList");
			imgDao.setPath(listImg);
			imgMapper.insertImg(imgDao);
		}
		//리스트이미지 등록 END
		
		//이미지그룹 넘버링을 담아줌
		detailImgGroupId = imgGroupMapper.selectTableNumbering();
		detailImgGroupId = detailImgGroupId + 1;
		//이미지 그룹 생성
		imgGroupMapper.insertImgGroup(detailImgGroupId);
		for(String detailImg : eventDao.getDetailImgPathArr() ) { //향상된for문
			ImgDao imgDao = new ImgDao();
			Integer imgNumbering = imgMapper.selectTableNumbering();
			imgNumbering = imgNumbering + 1;
			imgDao.setId(imgNumbering);
			imgDao.setImgGroupId(detailImgGroupId);
			imgDao.setNm("eventDetail");
			imgDao.setPath(detailImg);
			imgMapper.insertImg(imgDao);
		}
		
		//그룹값을 넣어줌
		eventDao.setListImg(listImgGroupId);
		eventDao.setDetailImg(detailImgGroupId);
		
		Integer eventNumbering = eventMapper.selectTableNumbering();
		
		//관리자로그인 세션에서 관리자 아이디를 추출해옴
		eventDao.setId(eventDao.getId());
		eventDao.setUpdateId(999999);//관리자 아이디
		eventDao.setTitle(eventDao.getTitle());
		eventDao.setContents(eventDao.getContents());
		eventDao.setRegId(999999);//관리자 아이디
		eventDao.setUseYn("Y");
		
		//더미데이터
		flag = eventMapper.updateBoEvent(eventDao);
			
		return flag;
		
	}
	

}
