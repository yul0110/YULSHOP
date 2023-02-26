package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.dao.InquiryDao;
import com.vo.Faq;

@Mapper
public interface CsMapper {
	
	// 시퀀스 넘버링
	int selectInquiryNumbering();
	
	//문의 생성
	int insertInquiry(InquiryDao inquiryDao);
	
	List<Faq> selectFaqList(String faqType);
}
