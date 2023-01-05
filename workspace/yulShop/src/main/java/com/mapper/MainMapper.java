package com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.vo.MemberVo;

@Mapper
public interface MainMapper {
	
	List<MemberVo> selectMyData(int id);
	
	int selectMember();
}
