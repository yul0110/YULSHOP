package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.service.CategoryService;
import com.service.GoodsService;
import com.vo.Category;

@Controller
public class EventController {

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping(value = "/event", method = RequestMethod.GET)
    public ModelAndView EventPage(String cate) {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		List<Category> categoryRefList = categoryService.selectCategoryList(cate);
		
		mv.addObject("categoryList", categoryList);
		mv.addObject("categoryRefList", categoryRefList);
		mv.setViewName("event/event");                                         
		return mv;
    }

	@RequestMapping(value = "/eventDetail", method = RequestMethod.GET)
	public ModelAndView EventDetailPage(String cate) {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		List<Category> categoryRefList = categoryService.selectCategoryList(cate);
		
		mv.addObject("categoryList", categoryList);
		mv.addObject("categoryRefList", categoryRefList);
		mv.setViewName("event/eventDetail");                                         
		return mv;
	}
	

}
