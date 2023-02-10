package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dao.GoodsDao;
import com.service.BoGoodsService;
import com.service.CategoryService;
import com.service.ImgService;
import com.vo.Category;
import com.vo.Goods;

@Controller
public class BackOfficeController {
	
	@Autowired
	ImgService imgService;
	
	@Autowired
	BoGoodsService boGoodsService;
	
	@Autowired
	CategoryService categoryService;
	
	//BO 메인 페이지
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String BoMainPage(){
		return "bo/main";
    }
	
	
	/*------------------상품----------------------*/
	
	//BO 상품등록페이지
	@RequestMapping(value = "/adminGoodsReg", method = RequestMethod.GET)
	public ModelAndView BoPage(){
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);//모델로 데이터 넘겨줌
		mv.setViewName("bo/goodsReg");
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
	
	/*------------------상품End----------------------*/
	
	//BO 상품등록페이지
	@RequestMapping(value = "/boInquiry", method = RequestMethod.GET)
	public ModelAndView boInquiry(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bo/boInquiry");
		return mv;
	}
	
	@RequestMapping(value = "/inquiryListAjax", method = RequestMethod.POST)
	public ModelAndView inquiryListAjax(@RequestBody GoodsDao dataJson) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		return mv;
	}
	
}
