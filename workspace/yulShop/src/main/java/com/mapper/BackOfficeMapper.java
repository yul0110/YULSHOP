package com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.dao.AnswerDao;
import com.dao.CouponDao;
import com.dao.CouponLogDao;
import com.dao.EventDao;
import com.dao.GoodsDao;
import com.dao.InquiryDao;
import com.dao.MemberDao;
import com.vo.Coupon;
import com.vo.Event;
import com.vo.Goods;
import com.vo.Inquiry;
import com.vo.Member;

@Mapper
public interface BackOfficeMapper {
	
	//문의 
	int selectBoInquiryAllCount();
	List<Inquiry> selectBoInquiryList(InquiryDao inquiryDao);
	Inquiry selectBoInquiryDetail(InquiryDao inquiryDao);
	int insertAnswer(AnswerDao answerDao);
	
	//쿠폰
	int selectBoCouponNumbering();
	int selectBoCouponAllCount();
	List<Coupon> selectBoCouponList(CouponDao couponDao);
	Coupon selectBoCoupon(CouponDao couponDao);
	int insertBoCoupon(CouponDao couponDao);
	int updateBoCoupon(CouponDao couponDao);
	
	//쿠폰 log
	int selectBoCouponLogNumbering();
	int insertBoCouponLog(CouponLogDao couponLogDao);
	
	//회원 
	int selectBoMemberAllCount();
	int updateBoMember(MemberDao memberDao);
	Member selectBoMember(MemberDao memberDao);
	List<Member> selectBoMemberList(MemberDao memberDao);

	//이벤트 
	int selectBoEventAllCount();
	List<Event> selectBoEventList(EventDao eventDao);

	//상품 
	int selectBogoodSAllCount();
	List<Goods>selectBoGoodsList(GoodsDao goodsDao);
	
	//상품 디테일
	Goods selectBoGoods(int id);
}
