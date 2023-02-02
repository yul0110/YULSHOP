package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dao.GoodsDao;
import com.service.BoGoodsService;
import com.service.ImgService;

@Controller
public class BackOfficeController {
	
	@Autowired
	ImgService imgService;
	
	@Autowired
	BoGoodsService boGoodsService;
	
	//BO 메인 페이지
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String BoMainPage(){
		return "bo/main";
    }
	
	//BO 메인 페이지
	@RequestMapping(value = "/adminGoodsReg", method = RequestMethod.GET)
	public String BoPage(){
		return "bo/goodsReg";
	}
	
	//상품등록 Ajax
	@RequestMapping(value = "/goodsRegAjax", method = RequestMethod.POST)
	public ModelAndView goodsRegAjax(@RequestBody GoodsDao goodsDataJson ) {
		
		ModelAndView mv = new ModelAndView("jsonView");

		
		int result = boGoodsService.insertGoods(goodsDataJson);
		
		mv.addObject("result", result);
		return mv;
	}
	
}
