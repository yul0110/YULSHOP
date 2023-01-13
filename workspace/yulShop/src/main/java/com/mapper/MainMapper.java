package com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.vo.Member;

@Mapper
public interface MainMapper {
	
	List<Member> selectMyData(int id);
	
	int selectMember();
}
