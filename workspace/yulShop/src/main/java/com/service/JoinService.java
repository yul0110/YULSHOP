package com.service;

import com.dao.MemberDao;
import com.vo.MemberVo;

public interface JoinService {
	
	int insertJoinMember(MemberDao memberDao);
	
	int selectIdCheck(String checkId);
}
