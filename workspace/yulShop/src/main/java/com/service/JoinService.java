package com.service;

import com.dao.MemberDao;

public interface JoinService {
	
	int insertJoinMember(MemberDao memberDao);
	
	int selectIdCheck(String checkId);
}
