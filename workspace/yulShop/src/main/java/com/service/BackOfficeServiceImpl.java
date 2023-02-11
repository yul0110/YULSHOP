package com.service;

import java.lang.reflect.Member;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.mapper.BackOfficeMapper;
import com.vo.Inquiry;

@Service
@Repository
public class BackOfficeServiceImpl implements BackOfficeService {

	@Autowired
	BackOfficeMapper backOfficeMapper;

	@Override
	public List<Inquiry> selectBoInquiryList(Inquiry inquiry) {
		return backOfficeMapper.selectBoInquiryList();
	}

	@Override
	public List<Member> selectBoMemberList(Member member) {
		return backOfficeMapper.selectBoMemberList();
	}



}
