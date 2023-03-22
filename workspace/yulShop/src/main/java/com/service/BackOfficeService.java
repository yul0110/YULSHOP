package com.service;

import java.util.List;

import com.dao.AnswerDao;
import com.dao.CouponDao;
import com.dao.EventDao;
import com.dao.GoodsDao;
import com.dao.InquiryDao;
import com.dao.MemberDao;
import com.vo.Coupon;
import com.vo.Event;
import com.vo.Goods;
import com.vo.Inquiry;
import com.vo.Member;

public interface BackOfficeService {

	//문의
	int selectBoInquiryAllCount(); 	//문의 총 리스트 갯수
	List<Inquiry> selectBoInquiryList(InquiryDao inquiryDao); //문의 리스트
	Inquiry selectBoInquiryDetail(InquiryDao inquiryDao); 	//문의 디테일
	int insertBoAnswer(AnswerDao answerDao); 	//문의 답변 등록
	
	//쿠폰
	int insertBoCoupon(CouponDao couponDao); //쿠폰등록
	int selectBoCouponAllCount();
	Coupon selectBoCoupon(CouponDao couponDao);
	List<Coupon> selectBoCouponList(CouponDao couponDao);
	
	//회원 총 리스트 갯수
	int selectBoMemberAllCount();
	//회원 리스트
	List<Member> selectBoMemberList(MemberDao memberDao);
	
	//이벤트 총 리스트 갯수
	int selectBoEventAllCount();
	//이벤트 리스트
	List<Event> selectBoEventList(EventDao eventDao);
	
	//상품 총 리스트 갯수
	int selectBogoodSAllCount();
	
	//상품 리스트
	List<Goods>selectBoGoodsList(GoodsDao goodsDao);
	
	//상품 디테일
	Goods selectGoods(int id);

}
