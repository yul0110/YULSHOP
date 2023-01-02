package com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.vo.member;

@Mapper
public interface MainMapper {
	
	List<member> selectMyData(int id);
	
	int selectMember();
}
