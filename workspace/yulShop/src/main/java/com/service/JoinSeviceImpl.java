package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.dao.MemberDao;
import com.mapper.JoinMapper;

@Service
@Repository
public class JoinSeviceImpl implements JoinService {

	@Autowired
	JoinMapper joinMapper;

	//회원가입
	@Override
	public int insertJoinMember(MemberDao memberDao) {

		return joinMapper.insertJoinMember(memberDao);
	}

	
	//아이디 중복 체크
	@Override
	public int selectIdCheck(String checkId) {

		return joinMapper.selectIdCheck(checkId);
	}

}
