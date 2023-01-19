package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dao.MemberDao;
import com.service.JoinService;


@Controller
public class JoinController {
	
	@Autowired
	JoinService joinService; 
	
	// 회원가입 페이지
	@RequestMapping(value = "/join", method = RequestMethod.GET)
    public String JoinPage() {
		
		return "join/join";
    }

	
	//아이디 중복 체크 Ajax
	@RequestMapping(value = "/idCheckAjax", method = RequestMethod.POST)
	public ModelAndView idCheckAjax(@RequestBody MemberDao memberDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		int result = joinService.selectIdCheck(memberDao.getUserId());
		mv.addObject("result", result);
		
		return mv;
	}

	
	//회원가입 Ajax
	@RequestMapping(value = "/joinusAjax", method = RequestMethod.POST)
	public ModelAndView joinusAjax(@RequestBody MemberDao memberDao) {
		
	   ModelAndView mv = new ModelAndView("jsonView");
	   
	   // result 값이 0이면 아무것도 변경하지 못한것 1이면 무언가 변경한것 그 변경한 레코드의 값을 가져온것
	   int result = joinService.insertJoinMember(memberDao);

	   //model.addAttribute("memberDao", memberDao);
	   mv.addObject("result", result);
	   mv.addObject("msg", memberDao.getNm()+"님");
	   return mv;
	}

}

