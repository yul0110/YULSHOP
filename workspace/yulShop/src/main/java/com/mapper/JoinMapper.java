package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.dao.MemberDao;

@Mapper
public interface JoinMapper {
	
	int insertJoinMember(MemberDao memberDao);
}
