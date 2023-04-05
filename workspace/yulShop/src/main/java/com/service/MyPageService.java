package com.service;

import java.util.List;
import com.dao.MemberDao;
import com.dao.WishDao;
import com.vo.Member;
import com.vo.Wish;

public interface MyPageService {
	
	//회원수정 화면에 보여줄 회원 데이터
	List<Member> selectMemberData(int id);	
	
	//찜한 상품 가져오는 쿼리
	List<Wish> selectWishGoodsData(int mId);
	
	//업데이트 
	int updateMemberPw(MemberDao memberDao);
	
	int updateMemberAddr(MemberDao memberDao);
	
	int updateWishList(WishDao wishDao);
	
	//탈퇴 비밀번호 체크
	int selectResignCheck(MemberDao memberDao);
}
