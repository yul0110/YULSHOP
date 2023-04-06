package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.dao.ImgDao;

@Mapper
public interface ImgMapper {
	
	//테이블 넘버링
	Integer selectTableNumbering();
	
	//이미지 생성
	int insertImg(ImgDao imgDao);
}
