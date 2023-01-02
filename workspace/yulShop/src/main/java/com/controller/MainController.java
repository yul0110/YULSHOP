package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.service.MainService;
import com.vo.member;

@Controller
public class MainController {

	@Autowired
	MainService mainService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String MainPage(){
		return "main/main";
    }
}
