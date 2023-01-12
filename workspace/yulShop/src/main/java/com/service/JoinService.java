package com.service;

import com.dao.MemberDao;

public interface JoinService {
	
	//회원가입 정보 등록
	int insertJoinMember(MemberDao memberDao);
	
	//회원가입 아이디 중복 체크
	int selectIdCheck(String checkId);
}
