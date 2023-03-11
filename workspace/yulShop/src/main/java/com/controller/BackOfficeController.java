package com.controller;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.dao.EventDao;
import com.dao.GoodsDao;
import com.dao.InquiryDao;
import com.dao.MemberDao;
import com.service.BackOfficeService;
import com.service.BoEventService;
import com.service.BoGoodsService;
import com.service.CategoryService;
import com.service.EventService;
import com.service.ImgService;
import com.vo.Category;
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
	

	
	/*---------------------------메인----------------------------------*/
	
	@RequestMapping(value = "/bmain", method = RequestMethod.GET)
    public String BoMainPage(){
		return "bo/bmain";
    }
	
	
	/*---------------------------상품----------------------------------*/
	
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
	
	//상품등록 Ajax
	@RequestMapping(value = "/goodsRegAjax", method = RequestMethod.POST)
	public ModelAndView goodsRegAjax(@RequestBody GoodsDao goodsDataJson ) {
		
		ModelAndView mv = new ModelAndView("jsonView");

		int result = boGoodsService.insertGoods(goodsDataJson);

		mv.addObject("result", result);
		return mv;
	}
	
	/*---------------------------상품 END-------------------------------*/
	
	
	//BO 문의 페이지
	@RequestMapping(value = "/binquiry", method = RequestMethod.GET)
	public ModelAndView boInquiry(){
		
		ModelAndView mv = new ModelAndView();

		mv.setViewName("bo/binquiry");
		return mv;
	}
	
	//BO 문의 Ajax
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
	
	/*--------------------------- 문의 END-------------------------------*/
	
	//BO 회원관리 페이지
	@RequestMapping(value = "/bmember", method = RequestMethod.GET)
	public ModelAndView boMember(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bo/bmember");
		return mv;
	}
	
	//BO 회원 리스트Ajax
	@RequestMapping(value = "/boMemberListAjax", method = RequestMethod.POST)
	public ModelAndView boMemberAjax(@RequestBody MemberDao memberDao) {
		
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
	
	/*---------------------------회원 END-------------------------------*/	
	
	//BO 이벤트 등록 페이지
	@RequestMapping(value = "/beventReg", method = RequestMethod.GET)
	public ModelAndView boEventReg(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bo/beventReg");
		return mv;
	}
	
	//BO 이벤트 리스트 페이지
	@RequestMapping(value = "/beventList", method = RequestMethod.GET)
	public ModelAndView beventList(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bo/beventList");
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

	
	/*---------------------------이벤트 END-------------------------------*/	
}
