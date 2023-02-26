package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.dao.EventDao;

@Mapper
public interface EventMapper {
	
	//테이블 넘버링
	Integer selectTableNumbering();
	
	//이벤트 등록
	int insertEvent(EventDao eventDao);
}
