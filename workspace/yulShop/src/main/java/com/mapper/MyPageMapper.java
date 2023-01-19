package com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.dao.MemberDao;
import com.vo.Member;

@Mapper
public interface MyPageMapper {
	
	//회원 수정 화면에 받아올 데이터
	List<Member> selectMemberData(int id);		
	
	//업데이트 
	int updateMemberPw(MemberDao memberDao);
	
	int updateMemberAddr(MemberDao memberDao);
	
	//탈퇴 비밀번호 체크
	int selectResignCheck(MemberDao memberDao);

}
