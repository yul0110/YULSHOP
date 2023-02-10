package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.dao.InquiryDao;

@Mapper
public interface CsMapper {
	
	// 시퀀스 넘버링
	int selectInquiryNumbering();
	
	//문의 생성
	int insertInquiry(InquiryDao inquiryDao);

}
