package com.mapper;

import java.lang.reflect.Member;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.vo.Inquiry;

@Mapper
public interface BackOfficeMapper {
	
	//문의 리스트
	List<Inquiry> selectBoInquiryList();

	//문의 리스트
	List<Member> selectBoMemberList();

}
