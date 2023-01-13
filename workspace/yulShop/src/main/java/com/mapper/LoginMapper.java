package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.dao.MemberDao;

@Mapper
public interface LoginMapper {
	
	Integer selectLoginIdCheck(MemberDao memberDao);
	
	Integer selectLoginCheck(MemberDao memberDao);
	
}
