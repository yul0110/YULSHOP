package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dao.InquiryDao;
import com.service.CsService;

@Controller
public class CsController {

	@Autowired
	CsService csService;
	
	// 문의하기 페이지
	@RequestMapping(value = "/ask", method = RequestMethod.GET)
    public String AskPage() {
		
		return "cs/ask";
    }	
	
	
	// 문의하기 Ajax
	@RequestMapping(value = "/askAjax", method = RequestMethod.POST)
	public ModelAndView askAjax(@RequestBody InquiryDao inquiryDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		//inquiryDao.setTitle("궁금궁금해에에에");
		//inquiryDao.setContext("빠빠빠빨간맛 궁그매 허니");	
		int resurt = csService.insertInquiry(inquiryDao);
		
		mv.addObject("resurt", resurt);
		return mv;
	}
	
	
	
}
