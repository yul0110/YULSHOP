package com.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.dao.AnswerDao;
import com.dao.CouponDao;
import com.dao.CouponLogDao;
import com.dao.EventDao;
import com.dao.GoodsDao;
import com.dao.InquiryDao;
import com.dao.MemberDao;
import com.mapper.BackOfficeMapper;
import com.vo.Coupon;
import com.vo.Event;
import com.vo.Goods;
import com.vo.Inquiry;
import com.vo.Member;

@Service
@Repository
public class BackOfficeServiceImpl implements BackOfficeService {

	@Autowired
	BackOfficeMapper backOfficeMapper;
	
	//문의
	@Override
	public int selectBoInquiryAllCount() {
		return backOfficeMapper.selectBoInquiryAllCount();
	}
	@Override
	public List<Inquiry> selectBoInquiryList(InquiryDao inquiryDao) {
		return backOfficeMapper.selectBoInquiryList(inquiryDao);
	}

	
	
	
	
	//회원
	@Override
	public int selectBoMemberAllCount() {
		return backOfficeMapper.selectBoMemberAllCount();
	}
	
	@Override
	public Member selectBoMember(MemberDao memberDao) {
		return backOfficeMapper.selectBoMember(memberDao);
	}
	
	@Override
	public List<Member> selectBoMemberList(MemberDao memberDao) {
		return backOfficeMapper.selectBoMemberList(memberDao);
	}
	
	@Override
	public int updateBoMember(MemberDao memberDao) {
		return backOfficeMapper.updateBoMember(memberDao);
	}
	
	
	
	
	
	//이벤트
	@Override
	public int selectBoEventAllCount() {
		return backOfficeMapper.selectBoEventAllCount();
	}
	@Override
	public List<Event> selectBoEventList(EventDao eventDao) {
		return backOfficeMapper.selectBoEventList(eventDao);
	}
	
	
	
	
	//상품
	@Override
	public int selectBogoodSAllCount() {
		return backOfficeMapper.selectBogoodSAllCount();
	}
	@Override
	public List<Goods> selectBoGoodsList(GoodsDao goodsDao) {
		return backOfficeMapper.selectBoGoodsList(goodsDao);
	}
	//상품 디테일
	@Override
	public Goods selectGoods(int id) {
		return backOfficeMapper.selectBoGoods(id);
	}
	@Override
	public Inquiry selectBoInquiryDetail(InquiryDao inquiryDao) {
		return backOfficeMapper.selectBoInquiryDetail(inquiryDao);
	}
	@Override
	public int insertBoAnswer(AnswerDao answerDao) {
		return backOfficeMapper.insertAnswer(answerDao);
	}
	@Override
	public int insertBoCoupon(CouponDao couponDao) {
		
		//신규 쿠폰 등록
		int indexNum = backOfficeMapper.selectBoCouponNumbering();
		indexNum = indexNum + 1;
		couponDao.setId(indexNum);
		int result = backOfficeMapper.insertBoCoupon(couponDao);
		
		//쿠폰생성 로그
		int indexNumLog = backOfficeMapper.selectBoCouponLogNumbering();
		CouponLogDao couponLogDao = new CouponLogDao();
		
		couponLogDao.setId(indexNumLog + 1);
		//관리자로그인 세션에서 관리자 아이디를 추출해옴
		couponLogDao.setCid(indexNum); 
		couponLogDao.setMid(999999); //관리자 아이디
		couponLogDao.setReason("쿠폰생성");
		couponLogDao.setRegId(999999); //관리자 아이디
		couponLogDao.setUpdateId(999999); //관리자 아이디
		
		backOfficeMapper.insertBoCouponLog(couponLogDao);
		
		return result;
	}
	
	
	
	
	//쿠폰
	@Override
	public List<Coupon> selectBoCouponList(CouponDao couponDao) {
		return backOfficeMapper.selectBoCouponList(couponDao);
	}
	
	@Override
	public int selectBoCouponAllCount() {
		return backOfficeMapper.selectBoCouponAllCount();
	}
	@Override
	public Coupon selectBoCoupon(CouponDao couponDao) {
		return backOfficeMapper.selectBoCoupon(couponDao);
	}
	@Override
	public int updateBoCoupon(CouponDao couponDao) {
		
		
		//현재 로그인중인 계정의 id를 넣어줌
		couponDao.setUpdateId(9999999);
		
		
		int result = backOfficeMapper.updateBoCoupon(couponDao);
		
		//쿠폰생성 로그
		int indexNumLog = backOfficeMapper.selectBoCouponLogNumbering();
		CouponLogDao couponLogDao = new CouponLogDao();
		
		couponLogDao.setId(indexNumLog + 1);
		//관리자로그인 세션에서 관리자 아이디를 추출해옴
		couponLogDao.setCid(couponDao.getId()); 
		couponLogDao.setMid(999999); //관리자 아이디
		couponLogDao.setReason("쿠폰수정");
		couponLogDao.setRegId(999999); //관리자 아이디
		couponLogDao.setUpdateId(999999); //관리자 아이디
		
		backOfficeMapper.insertBoCouponLog(couponLogDao);
		
		return result;
	}



}
