package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FaqController {

	@RequestMapping(value = "/faq", method = RequestMethod.GET)
    public String FaqPage() {

		return "faq/faq";
	}
}
