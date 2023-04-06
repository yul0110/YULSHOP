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
public class CartController {

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
    public ModelAndView CartPage(String cate) {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName("cart/cart");                                         
		return mv;
    }

	@RequestMapping(value = "/wishList", method = RequestMethod.GET)
	public ModelAndView wishListPage(String cate) {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName("cart/wishList");                                         
		return mv;
	}
	
}
