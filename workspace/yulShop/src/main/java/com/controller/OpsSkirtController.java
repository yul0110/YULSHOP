package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OpsSkirtController {
	
	@RequestMapping(value = "/opsSkirt", method = RequestMethod.GET)
    public String OpsSkirtPage() {

		return "opsSkirt/opsSkirt";
    }
}
