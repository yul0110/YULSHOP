package com.service;

import java.util.List;
import com.vo.Event;

public interface EventService {
	
	//이벤트 리스트
	List<Event> selectEventList();

	//이벤트 디테일 리스트
	List<Event> selectEventDetailList(int id);
	
	
}
