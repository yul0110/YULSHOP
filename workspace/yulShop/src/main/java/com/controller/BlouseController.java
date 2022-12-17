package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BlouseController {

	@RequestMapping(value = "/blouse", method = RequestMethod.GET)
    public String BlousePage() {

		return "blouse";
    }
}
