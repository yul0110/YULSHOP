package com.service;

import java.util.List;

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
public class EventServiceImpl implements EventService {
	
	@Autowired
	EventMapper eventMapper;

	@Override
	public List<Event> selectEventList() {
		return eventMapper.selectEventList();
	}

	@Override
	public List<Event> selectEventDetailList(int id) {
		return eventMapper.selectEventDetailList(id);
	}

}
