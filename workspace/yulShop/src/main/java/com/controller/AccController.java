package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccController {
	
	@RequestMapping(value = "/acc", method = RequestMethod.GET)
    public String AccPage() {
		
		return "acc";
    }
}
