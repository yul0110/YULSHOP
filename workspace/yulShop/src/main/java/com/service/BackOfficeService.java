package com.service;

import java.lang.reflect.Member;
import java.util.List;
import com.vo.Inquiry;

public interface BackOfficeService {

	//문의 리스트
	List<Inquiry> selectBoInquiryList(Inquiry inquiry);
	
	//문의 리스트
	List<Member> selectBoMemberList(Member member);
}
