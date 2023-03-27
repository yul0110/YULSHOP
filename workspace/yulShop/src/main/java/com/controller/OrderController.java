package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.service.CategoryService;
import com.vo.Category;

@Controller
public class OrderController {
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = "/order", method = RequestMethod.GET)
    public ModelAndView OrderPage() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName( "order/order"); 
		return mv;
    }
	
	@RequestMapping(value = "/orderComple", method = RequestMethod.GET)
	public ModelAndView orderComple() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName( "order/orderComple"); 
		return mv;
	}
}
