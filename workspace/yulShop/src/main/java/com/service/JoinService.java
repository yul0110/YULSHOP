package com.service;

import org.springframework.stereotype.Service;
import com.dao.MemberDao;

@Service
public interface JoinService {
	
	int insertJoinMember(MemberDao memberDao);
	
}
