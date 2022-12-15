package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mapper.MainMapper;
import com.vo.member;

@Service
public class MainServiceImpl implements MainService{

	@Autowired
	private MainMapper mainMapper; 
	
	@Override
	public int selectMember() {
		return mainMapper.selectMember();
	}

	@Override
	public List<member> selectMyData(int id) {	
		return mainMapper.selectMyData(id);
	}
	
}
