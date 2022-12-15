package com.service;

import java.util.List;

import com.vo.member;

public interface MainService {
	
	List<member> selectMyData(int id);
	
	int selectMember();
}
