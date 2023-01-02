package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BottomController {

	@RequestMapping(value = "/bottom", method = RequestMethod.GET)
    public String BottomPage() {
		
		return "bottom/bottom";
    }
}