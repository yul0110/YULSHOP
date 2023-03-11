package com.service;

import com.dao.EventDao;
import com.vo.Event;

public interface BoEventService {
	
	//이벤트 등록
	int insertEvent(EventDao eventDao);
	
	//이벤트 디테일
	Event selectEvent(int id);
}
