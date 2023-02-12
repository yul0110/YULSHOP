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
	
	// faq 페이지 
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faqPage() {
		
		return "cs/faq";
	}	

	// 문의하기 Ajax
	@RequestMapping(value = "/askAjax", method = RequestMethod.POST)
	public ModelAndView askAjax(@RequestBody InquiryDao inquiryDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");
	
		int resurt = csService.insertInquiry(inquiryDao);
		
		mv.addObject("resurt", resurt);
		return mv;
	}
	

	
	
}
