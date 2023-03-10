package com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.dao.EventDao;
import com.dao.InquiryDao;
import com.dao.MemberDao;
import com.vo.Event;
import com.vo.Inquiry;
import com.vo.Member;

@Mapper
public interface BackOfficeMapper {
	
	//문의 
	int selectBoInquiryAllCount();
	List<Inquiry> selectBoInquiryList(InquiryDao inquiryDao);
	
	//회원리스트
	int selectBoMemberAllCount();
	List<Member> selectBoMemberList(MemberDao memberDao);

	//이벤트리스트
	int selectBoEventAllCount();
	List<Event> selectBoEventList(EventDao eventDao);
}
