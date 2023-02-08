package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.service.CategoryService;
import com.service.MainService;
import com.vo.Category;

@Controller
public class MainController {

	@Autowired
	MainService mainService;
	
	@Autowired
	CategoryService categoryService;
	
	// 메인 페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView MainPage(){
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName("main/main"); 
		return mv;
    }
}
