package com.service;

import java.util.List;

import com.vo.Member;

public interface MainService {
	
	List<Member> selectMyData(int id);
	
	int selectMember();
}
