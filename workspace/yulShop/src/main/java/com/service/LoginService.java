package com.service;

import com.dao.MemberDao;

public interface LoginService {

	Integer selectLoginCheck(MemberDao memberDao);
	
}
