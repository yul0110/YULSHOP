package com.service;

import java.util.List;

import com.vo.MemberVo;

public interface MainService {
	
	List<MemberVo> selectMyData(int id);
	
	int selectMember();
}
