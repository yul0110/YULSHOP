package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.dao.MemberDao;

@Mapper
public interface LoginMapper {
	
	//로그인 아이디 확인
	Integer selectLoginIdCheck(MemberDao memberDao);
	
	//로그인 아이디, 비밀번호 확인
	Integer selectLoginCheck(MemberDao memberDao);
	
	//아이디 찾기 이름, 휴대폰 번호 확인
	String selectfindId(MemberDao memberDao);

	//비밀번호 찾기 아이디, 이름, 휴대폰 번호 확인
	int selectfindPw(MemberDao memberDao);
	
	
}
