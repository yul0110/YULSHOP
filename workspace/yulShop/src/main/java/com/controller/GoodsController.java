package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.GoodsDao;
import com.service.CategoryService;
import com.service.GoodsService;
import com.vo.Category;
import com.vo.Goods;

import java.util.List;

@Controller
public class GoodsController {

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping(value = "/goods", method = RequestMethod.GET)
    public ModelAndView goods(String cate) {
		
		ModelAndView mv = new ModelAndView();
		
		//---------카테고리-----------
		List<Category> categoryList = categoryService.selectAllCategoryList();
		List<Category> categoryRefList = categoryService.selectCategoryList(cate);
		//---------카테고리-----------
		
		mv.addObject("categoryList", categoryList);
		mv.addObject("categoryRefList", categoryRefList);
		mv.addObject("currentCate", cate);
		mv.setViewName("goods/goods");                                         
		return mv;
    }
	
	//상품 디테일 페이지
	@RequestMapping(value = "/goodsDetail", method = RequestMethod.GET)
    public ModelAndView goodsDetailPage(int goodsId){
		
		ModelAndView mv = new ModelAndView();
		
		Goods goodsDetail = goodsService.selectGoods(goodsId);
		
		mv.addObject("goods", goodsDetail);
		mv.setViewName("goods/goodsDetail");
		
		return mv;
    }
	
	@RequestMapping(value = "/goodsBestListAjax", method = RequestMethod.POST)
	public ModelAndView goodsBestListAjax() {
		
		ModelAndView mv = new ModelAndView("jsonView");

		return mv;
	}
	
	@RequestMapping(value = "/goodsListAjax", method = RequestMethod.POST)
	public ModelAndView goodsListAjax(@RequestBody GoodsDao dataJson) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<Goods> goodsList = goodsService.selectGoodsList(dataJson);
		
		mv.addObject("goodsList", goodsList);
		return mv;
	}
}
