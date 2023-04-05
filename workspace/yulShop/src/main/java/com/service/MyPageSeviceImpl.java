package com.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.dao.MemberDao;
import com.dao.WishDao;
import com.mapper.MyPageMapper;
import com.vo.Member;
import com.vo.Wish;

@Service
@Repository
public class MyPageSeviceImpl implements MyPageService {

	@Autowired
	private MyPageMapper myPageMapper;

	@Override
	public List<Member> selectMemberData(int id) {  //회원수정 화면에 보여줄 회원 데이터
		return myPageMapper.selectMemberData(id);
	}

	@Override		
	public int updateMemberPw(MemberDao memberDao) {  //업데이트 
		return myPageMapper.updateMemberPw(memberDao);
	}
	 
	@Override		
	public int updateMemberAddr(MemberDao memberDao) {  //업데이트
		return myPageMapper.updateMemberPw(memberDao);
	}

	@Override
	public int selectResignCheck(MemberDao memberDao) {  //탈퇴시 비밀번호 체크 
		return myPageMapper.selectResignCheck(memberDao);
	}

	@Override
	public List<Wish> selectWishGoodsData(int mId) {  //찜한상품 
		return myPageMapper.selectWishGoodsData(mId);
	}

	@Override
	public int updateWishList(WishDao wishDao) {  //찜한 상품 업데이트
		return myPageMapper.updateWishList(wishDao);
	}
	
	
}
