package com.service;

import java.util.List;
import com.dao.InquiryDao;
import com.dao.MemberDao;
import com.vo.Inquiry;
import com.vo.Member;

public interface BackOfficeService {

	//문의 총 리스트 갯수
	int selectBoInquiryAllCount();
	//문의 리스트
	List<Inquiry> selectBoInquiryList(InquiryDao inquiryDao);

	//회원 총 리스트 갯수
	int selectBoMemberAllCount();
	//회원 리스트
	List<Member>  selectBoMemberList(MemberDao memberDao);

}
