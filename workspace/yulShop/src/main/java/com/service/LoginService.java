package com.service;

import com.dao.MemberDao;

public interface LoginService {

	//로그인 체크
	Integer selectLoginCheck(MemberDao memberDao);
	
	//아이디 찾기 
	String selectfindId(MemberDao memberDao);
	
	//비밀번호 찾기 아이디, 이름, 휴대폰 번호 확인
	int selectfindPw(MemberDao memberDao);
	
}
