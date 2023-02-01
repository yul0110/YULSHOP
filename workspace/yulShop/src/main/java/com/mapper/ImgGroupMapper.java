package com.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ImgGroupMapper {
	
	//테이블 넘버링
	Integer selectTableNumbering();
	
	//이미지 그룹 생성
	int insertImgGroup(Integer numbering);
}
