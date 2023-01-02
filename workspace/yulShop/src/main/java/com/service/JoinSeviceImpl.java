package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import com.dao.MemberDao;
import com.mapper.JoinMapper;

public class JoinSeviceImpl implements JoinService {

	@Autowired
	JoinMapper joinMapper;
	
	@Override
	public int insertJoinMember(MemberDao memberDao) {
	
		return joinMapper.insertJoinMember(memberDao);
	}

	
}
