package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.dao.EventDao;
import com.vo.Event;

@Mapper
public interface EventMapper {
	
	//테이블 넘버링
	Integer selectTableNumbering();
	
	//이벤트 등록
	int insertEvent(EventDao eventDao);
	
	//이벤트 리스트
	List<Event> selectEventList();
	
	//이벤트 디테일 리스트
	List<Event> selectEventDetailList(int id);
	
}
