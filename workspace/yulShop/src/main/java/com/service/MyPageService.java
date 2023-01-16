package com.service;

import java.util.List;
import com.dao.MemberDao;
import com.vo.Member;

public interface MyPageService {
	
	List<Member> selectMemberData(int id);	
	
	//업데이트 
	int updateMemberPw(MemberDao memberDao);
	
	int updateMemberAddr(MemberDao memberDao);
}
