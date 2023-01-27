package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dao.BoUploadDao;


@Controller
public class BackOfficeController {
	
	//BO 메인 페이지
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String BoMainPage(){
		return "bo/main";
    }
	
	//BO 메인 페이지
	@RequestMapping(value = "/admingGoodsReg", method = RequestMethod.GET)
	public String BoPage(){
		return "bo/goodsReg";
	}
	
	//상품등록 Ajax
	@RequestMapping(value = "/uploadAjax", method = RequestMethod.POST)
	public ModelAndView uploadAjax(@RequestBody BoUploadDao boUploadDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");

		return mv;
	}
	
	
	
	
}
