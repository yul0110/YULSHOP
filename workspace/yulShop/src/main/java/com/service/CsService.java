package com.service;

import java.util.List;
import com.dao.InquiryDao;
import com.vo.Faq;

public interface CsService {

	//문의
	int insertInquiry(InquiryDao inquiryDao);
	
	//FaQ
	List<Faq> selectFaqList(String type);

}
