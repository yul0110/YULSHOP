package com.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.dao.EventDao;
import com.dao.GoodsDao;
import com.dao.InquiryDao;
import com.dao.MemberDao;
import com.mapper.BackOfficeMapper;
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
	public List<Member> selectBoMemberList(MemberDao memberDao) {
		return backOfficeMapper.selectBoMemberList(memberDao);
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
		return backOfficeMapper.selectGoods(id);
	}
	@Override
	public Inquiry selectBoInquiryDetail(InquiryDao inquiryDao) {
		return backOfficeMapper.selectBoInquiryDetail(inquiryDao);
	}

}
