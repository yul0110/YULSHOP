package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.dao.MemberDao;

@Mapper
public interface JoinMapper {
	
	//member 테이블 넘버링
	int selectTableNumbering();
	
	//회원가입 정보 등록
	int insertJoinMember(MemberDao memberDao);
	
	//회원가입 아이디 중복 체크
	int selectIdCheck(String checkId);
}
