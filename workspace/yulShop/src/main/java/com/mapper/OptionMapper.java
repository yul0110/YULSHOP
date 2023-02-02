package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.dao.OptionDao;

@Mapper
public interface OptionMapper {
	
	//테이블 넘버링
	Integer selectTableNumbering();
	
	//옵션 생성
	int insertOption(OptionDao optionDao);
}
