package com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.dao.MemberDao;
import com.dao.WishDao;
import com.vo.Member;
import com.vo.MemberCoupon;
import com.vo.Wish;

@Mapper
public interface MyPageMapper {
	
	//회원 수정 화면에 받아올 데이터
	List<Member> selectMemberData(int id);		
	
	//찜한 상품 가져오는 쿼리
	List<Wish> selectWishGoodsData(int mId);

	//회원 쿠폰 가져오는 쿼리
	List<MemberCoupon> selectCouponData(int mId);
	
	//업데이트 
	int updateMemberPw(MemberDao memberDao);
	
	int updateMemberAddr(MemberDao memberDao);
	
	int updateWishList(WishDao wishDao);
	
	//탈퇴 비밀번호 체크
	int selectResignCheck(MemberDao memberDao);

}
