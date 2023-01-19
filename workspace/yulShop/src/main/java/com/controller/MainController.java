package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.service.MainService;

@Controller
public class MainController {

	@Autowired
	MainService mainService;
	
	// 메인 페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String MainPage(){
		return "main/main";
    }
}
