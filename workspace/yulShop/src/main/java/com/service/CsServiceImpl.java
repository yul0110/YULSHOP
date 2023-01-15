package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.InquiryDao;
import com.mapper.CsMapper;

@Service
public class CsServiceImpl implements CsService {
	
	@Autowired
	CsMapper csMapper;

	@Override
	public int insertInquiry(InquiryDao inquiryDao) {
		
		int sqs = csMapper.selectInquiryNumbering();
		sqs = sqs + 1;
		inquiryDao.setId(sqs);

		return csMapper.insertInquiry(inquiryDao);
	}
	

}
