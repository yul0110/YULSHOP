package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mapper.MainMapper;
import com.vo.MemberVo;

@Service
public class MainServiceImpl implements MainService{

	@Autowired
	private MainMapper mainMapper; 
	
	@Override
	public int selectMember() {
		return mainMapper.selectMember();
	}

	@Override
	public List<MemberVo> selectMyData(int id) {	
		return mainMapper.selectMyData(id);
	}
	
}
