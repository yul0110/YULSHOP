package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dao.AnswerDao;
import com.dao.CouponDao;
import com.dao.EventDao;
import com.dao.GoodsDao;
import com.dao.InquiryDao;
import com.dao.MemberDao;
import com.service.BackOfficeService;
import com.service.BoEventService;
import com.service.BoGoodsService;
import com.service.CategoryService;
import com.service.ImgService;
import com.vo.Category;
import com.vo.Coupon;
import com.vo.Event;
import com.vo.Goods;
import com.vo.Inquiry;
import com.vo.Member;

@Controller
public class BackOfficeController {
	
	@Autowired
	ImgService imgService;
	
	@Autowired
	BoGoodsService boGoodsService;
	
	@Autowired
	BoEventService boEventService;
	
	@Autowired
	CategoryService categoryService;

	@Autowired
	BackOfficeService backOfficeService;
	

	
/*------------------------------------- 메인 --------------------------------------*/
	
	@RequestMapping(value = "/bmain", method = RequestMethod.GET)
    public String BoMainPage(){
		return "bo/bmain";
    }


/*------------------------------------- 쿠폰 --------------------------------------*/
	
	@RequestMapping(value = "/bcoupon", method = RequestMethod.GET)
    public String bcoupon(){
		return "bo/bcoupon";
    }
	
	//BO 쿠폰 등록페이지
	@RequestMapping(value = "/bcouponReg", method = RequestMethod.GET)
	public ModelAndView bcouponReg(String cate){
		
		ModelAndView mv = new ModelAndView();

		mv.setViewName("bo/bcouponReg");
		return mv;
	}
	
	//BO 쿠폰 수정 페이지
	@RequestMapping(value = "/bcouponDetail", method = RequestMethod.GET)
	public ModelAndView bcouponDetail(int id){
		
		ModelAndView mv = new ModelAndView();

		CouponDao couponDao = new CouponDao();
		couponDao.setId(id);
		
		Coupon coupon = backOfficeService.selectBoCoupon(couponDao);
		
		mv.addObject("coupon", coupon);
		mv.addObject("nowId", id);
		mv.setViewName("bo/bcouponDetail");
		return mv;
	}
	
	//BO 쿠폰 리스트 Ajax
	@RequestMapping(value = "/couponListAjax", method = RequestMethod.POST)
	public ModelAndView bcouponListAjax(@RequestBody CouponDao dataJson) {
		
		ModelAndView mv = new ModelAndView("jsonView");
	
		//게시물의 총 갯수
		int allCount = backOfficeService.selectBoCouponAllCount();
		
		dataJson.setTotal(allCount);
		dataJson.pagingSetting();
		List<Coupon> couponList = backOfficeService.selectBoCouponList(dataJson);
		
		mv.addObject("couponList", couponList);
		mv.addObject("prevPageData", dataJson.getPrevPage());
		mv.addObject("nextPageData", dataJson.getNextPage());
		mv.addObject("pageNumPageData", dataJson.getPageNum());
		mv.addObject("firstPageData", dataJson.getFirstPage());
		mv.addObject("endPageData", dataJson.getEndPage());
		return mv;
	}
	
	// BO 쿠폰 등록 ajax
	@RequestMapping(value = "/couponRegAjax", method = RequestMethod.POST)
	public ModelAndView couponRegAjax(@RequestBody CouponDao dataJson ) {
		
		ModelAndView mv = new ModelAndView("jsonView");

		int result = backOfficeService.insertBoCoupon(dataJson);

		mv.addObject("result", result);
		return mv;
	}
	
	// BO 쿠폰 수정 ajax
	@RequestMapping(value = "/couponUpdateAjax", method = RequestMethod.POST)
	public ModelAndView couponUpdateAjax(@RequestBody CouponDao dataJson ) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = backOfficeService.updateBoCoupon(dataJson);
		
		mv.addObject("result", result);
		return mv;
	}
	
/*------------------------------------- 상품 --------------------------------------*/
	
	//BO 상품등록페이지
	@RequestMapping(value = "/bgoodsReg", method = RequestMethod.GET)
	public ModelAndView BoPage(String cate){
		
		ModelAndView mv = new ModelAndView();
		//---------카테고리-----------
		List<Category> categoryList = categoryService.selectAllCategoryList();
		List<Category> categoryRefList = categoryService.selectCategoryList(cate);
		//---------카테고리-----------
		
		mv.addObject("categoryList", categoryList);
		mv.addObject("categoryRefList", categoryRefList);
		mv.addObject("currentCate", cate);
		mv.setViewName("bo/bgoodsReg");
		return mv;
	}
	
	//BO 이벤트 리스트 페이지
	@RequestMapping(value = "/bgoods", method = RequestMethod.GET)
	public ModelAndView bgoods(){
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("bo/bgoods");
		return mv;
	}
	
	//BO 상품 수정
	@RequestMapping(value = "/bgoodsDetail", method = RequestMethod.GET)
	public ModelAndView bgoodsDetail(int id , String cate) {
		
		ModelAndView mv = new ModelAndView(); 
		//---------카테고리-----------
		List<Category> categoryList = categoryService.selectAllCategoryList();
		List<Category> categoryRefList = categoryService.selectCategoryList(cate);
		//---------카테고리-----------
		
		Goods goods =  backOfficeService.selectGoods(id);
		
		mv.addObject("categoryList", categoryList);
		mv.addObject("categoryRefList", categoryRefList);
		mv.addObject("currentCate", cate);
		mv.addObject("goods",goods);
		mv.setViewName("bo/bgoodsDetail");
		return mv;
	}
	
	//상품등록 Ajax
	@RequestMapping(value = "/goodsRegAjax", method = RequestMethod.POST)
	public ModelAndView goodsRegAjax(@RequestBody GoodsDao goodsDataJson ) {
		
		ModelAndView mv = new ModelAndView("jsonView");

		int result = boGoodsService.insertGoods(goodsDataJson);

		mv.addObject("result", result);
		return mv;
	}
	
	
	//BO 상품 리스트 Ajax
	@RequestMapping(value = "/bgoodsListAjax", method = RequestMethod.POST)
	public ModelAndView goodsListAjax(@RequestBody GoodsDao goodsDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");
	
		//게시물의 총 갯수
		int allCount = backOfficeService.selectBoInquiryAllCount();
		
		goodsDao.setTotal(allCount);
		goodsDao.pagingSetting();
		List<Goods> goodsList = backOfficeService.selectBoGoodsList(goodsDao);
		
		mv.addObject("goodsList", goodsList);
		mv.addObject("goodsDetail", goodsList.get(0));
		mv.addObject("prevPageData", goodsDao.getPrevPage());
		mv.addObject("nextPageData", goodsDao.getNextPage());
		mv.addObject("pageNumPageData", goodsDao.getPageNum());
		mv.addObject("firstPageData", goodsDao.getFirstPage());
		mv.addObject("endPageData", goodsDao.getEndPage());
		return mv;
	}
	
	
/*---------------------------------- 문의 ----------------------------------*/
	
	//BO 문의 페이지
	@RequestMapping(value = "/binquiry", method = RequestMethod.GET)
	public ModelAndView boInquiry(){
		
		ModelAndView mv = new ModelAndView();

		mv.setViewName("bo/binquiry");
		return mv;
	}
	
	
	//BO 이벤트 수정 페이지
	@RequestMapping(value = "/binquiryDetail", method = RequestMethod.GET)
	public ModelAndView binquiryDetail(int id){
		
		ModelAndView mv = new ModelAndView();
		
		InquiryDao inquiryDao = new InquiryDao();
		inquiryDao.setId(id);
		
		Inquiry inquiry = backOfficeService.selectBoInquiryDetail(inquiryDao);
		
		//회원데이터 작업 해야함 ------kingyul
		
		mv.addObject("inquiry", inquiry);
		mv.addObject("qid", id);
		mv.setViewName("bo/binquiryDetail");
		return mv;
	}
	
	//BO 문의 리스트 Ajax
	@RequestMapping(value = "/inquiryListAjax", method = RequestMethod.POST)
	public ModelAndView inquiryListAjax(@RequestBody InquiryDao inquiryDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");
	
		//게시물의 총 갯수
		int allCount = backOfficeService.selectBoInquiryAllCount();
		//int inquiryTotal = 
		
		inquiryDao.setTotal(allCount);
		
		//inquiryDao.setAmount(20);
		
		inquiryDao.pagingSetting();
		List<Inquiry> inquiryList = backOfficeService.selectBoInquiryList(inquiryDao);
		
		mv.addObject("inquiryList", inquiryList);
		mv.addObject("prevPageData", inquiryDao.getPrevPage());
		mv.addObject("nextPageData", inquiryDao.getNextPage());
		mv.addObject("pageNumPageData", inquiryDao.getPageNum());
		mv.addObject("firstPageData", inquiryDao.getFirstPage());
		mv.addObject("endPageData", inquiryDao.getEndPage());
		return mv;
	}

	//BO 답변등록 Ajax
	@RequestMapping(value = "/answerRegAjax", method = RequestMethod.POST)
	public ModelAndView answerRegAjax(@RequestBody AnswerDao dataJson ) {
		
		ModelAndView mv = new ModelAndView("jsonView");

		int result = backOfficeService.insertBoAnswer(dataJson);

		mv.addObject("result", result);
		return mv;
	}
	
/*----------------------------------- 회원 -----------------------------------*/
	
	//BO 회원관리 페이지
	@RequestMapping(value = "/bmember", method = RequestMethod.GET)
	public ModelAndView boMember(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bo/bmember");
		return mv;
	}

	//BO 회원관리 페이지
	@RequestMapping(value = "/bmemberDetail", method = RequestMethod.GET)
	public ModelAndView bmemberDetail(int id){
		
		ModelAndView mv = new ModelAndView();
		
		MemberDao memberDao = new MemberDao();
		memberDao.setId(id);
		
		Member member = backOfficeService.selectBoMember(memberDao);
		
		mv.addObject("member", member);
		mv.addObject("nowId", id);
		mv.setViewName("bo/bmemberDetail");
		return mv;
	}
	
	//BO 회원 리스트Ajax
	@RequestMapping(value = "/memberListAjax", method = RequestMethod.POST)
	public ModelAndView memberListAjax(@RequestBody MemberDao memberDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		//회원리스트의 총 갯수
		int allCount = backOfficeService.selectBoMemberAllCount();		
		
		memberDao.setTotal(allCount);
		
		memberDao.pagingSetting();
		List<Member> memberList = backOfficeService.selectBoMemberList(memberDao);

		mv.addObject("memberList", memberList);
		mv.addObject("prevPageData", memberDao.getPrevPage());
		mv.addObject("nextPageData", memberDao.getNextPage());
		mv.addObject("pageNumPageData", memberDao.getPageNum());
		mv.addObject("firstPageData", memberDao.getFirstPage());
		mv.addObject("endPageData", memberDao.getEndPage());
		 
		return mv;
	}
	
	// BO 회원정보 수정 ajax
	@RequestMapping(value = "/updateMemberAjax", method = RequestMethod.POST)
	public ModelAndView memberUpdateAjax(@RequestBody MemberDao dataJson ) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = backOfficeService.updateBoMember(dataJson);
		
		mv.addObject("result", result);
		return mv;
	}
	
/*---------------------------------- 이벤트 ------------------------------------*/	
	
	//BO 이벤트 등록 페이지
	@RequestMapping(value = "/beventReg", method = RequestMethod.GET)
	public ModelAndView boEventReg(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bo/beventReg");
		return mv;
	}
	
	//BO 이벤트 리스트 페이지
	@RequestMapping(value = "/bevent", method = RequestMethod.GET)
	public ModelAndView bevent(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bo/bevent");
		return mv;
	}

	//BO 이벤트 수정 페이지
	@RequestMapping(value = "/beventDetail", method = RequestMethod.GET)
	public ModelAndView beventDetail(int id){
		
		ModelAndView mv = new ModelAndView();
		
		Event event = boEventService.selectEvent(id);
		
		mv.addObject("event", event);
		mv.setViewName("bo/beventDetail");
		return mv;
	}
	
	//BO 이벤트 등록 Ajax
	@RequestMapping(value = "/eventRegAjax", method = RequestMethod.POST)
	public ModelAndView eventRegAjax(@RequestBody EventDao eventDataJson ) {
		
		ModelAndView mv = new ModelAndView("jsonView");

		int result = boEventService.insertEvent(eventDataJson);

		mv.addObject("result", result);
		return mv;
	}

	//BO 이벤트 리스트 Ajax
	@RequestMapping(value = "/eventListAjax", method = RequestMethod.POST)
	public ModelAndView eventListAjax(@RequestBody EventDao eventDao ) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		//이벤트리스트의 총 갯수
		int allCount = backOfficeService.selectBoEventAllCount();		
		
		eventDao.setTotal(allCount);
		
		eventDao.pagingSetting();
		List<Event> eventList = backOfficeService.selectBoEventList(eventDao);

		mv.addObject("eventList", eventList);
		mv.addObject("prevPageData", eventDao.getPrevPage());
		mv.addObject("nextPageData", eventDao.getNextPage());
		mv.addObject("pageNumPageData", eventDao.getPageNum());
		mv.addObject("firstPageData", eventDao.getFirstPage());
		mv.addObject("endPageData", eventDao.getEndPage());
		return mv;
	}
	
}
