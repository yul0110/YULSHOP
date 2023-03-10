package com.service;

import java.util.List;
import com.dao.MemberDao;
import com.vo.Member;

public interface MyPageService {
	
	//회원수정 화면에 보여줄 회원 데이터
	List<Member> selectMemberData(int id);	
	
	//업데이트 
	int updateMemberPw(MemberDao memberDao);
	
	int updateMemberAddr(MemberDao memberDao);
	
	//탈퇴 비밀번호 체크
	int selectResignCheck(MemberDao memberDao);
}
