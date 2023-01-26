package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
