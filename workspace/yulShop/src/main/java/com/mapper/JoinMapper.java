package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.dao.MemberDao;
import com.vo.MemberVo;

@Mapper
public interface JoinMapper {
	
	int insertJoinMember(MemberDao memberDao);
	
	int selectIdCheck(String checkId);
}
