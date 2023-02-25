package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dao.InquiryDao;
import com.service.CategoryService;
import com.service.CsService;
import com.vo.Category;

@Controller
public class CsController {

	@Autowired
	CsService csService;
	
	@Autowired
	CategoryService categoryService;
	
	// 문의하기 페이지
	@RequestMapping(value = "/ask", method = RequestMethod.GET)
    public ModelAndView AskPage() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName("cs/ask"); 
		return mv;
    }	
	
	// faq 페이지 
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public ModelAndView faqPage() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName("cs/faq"); 
		return mv;
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
