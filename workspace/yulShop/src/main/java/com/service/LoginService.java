package com.service;

import com.dao.MemberDao;

public interface LoginService {

	//로그인 체크
	Integer selectLoginCheck(MemberDao memberDao);
	
	//아이디 찾기 
	String selectfindId(MemberDao memberDao);
	
	
	
}
