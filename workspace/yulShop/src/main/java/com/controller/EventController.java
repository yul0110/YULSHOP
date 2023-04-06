package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.service.CategoryService;
import com.service.EventService;
import com.service.GoodsService;
import com.vo.Category;
import com.vo.Event;

@Controller
public class EventController {

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	GoodsService goodsService;
	
	@Autowired
	EventService eventService;
	
	@RequestMapping(value = "/event", method = RequestMethod.GET)
    public ModelAndView EventPage() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		List<Event> eventList = eventService.selectEventList();
		
		mv.addObject("categoryList", categoryList);
		mv.addObject("eventList", eventList);
		mv.setViewName("event/event");                                         
		return mv;
    }
	
	@RequestMapping(value = "/eventDetail", method = RequestMethod.GET)
	public ModelAndView EventDetailPage(int id) {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		List<Event> eventDetailList = eventService.selectEventDetailList(id);
		
		mv.addObject("categoryList", categoryList);
		mv.addObject("eventDetailList", eventDetailList);
		mv.setViewName("event/eventDetail");                                         
		return mv;
	}

}
