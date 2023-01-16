package com.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.dao.MemberDao;
import com.mapper.MyPageMapper;
import com.vo.Member;

@Service
@Repository
public class MyPageSeviceImpl implements MyPageService {

	@Autowired
	private MyPageMapper myPageMapper;

	@Override
	public List<Member> selectMemberData(int id) {
		return myPageMapper.selectMemberData(id);
	}

	@Override
	public int updateMemberPw(MemberDao memberDao) {
		return myPageMapper.updateMemberPw(memberDao);
	}

	@Override
	public int updateMemberAddr(MemberDao memberDao) {
		return myPageMapper.updateMemberPw(memberDao);
	}
	
}
