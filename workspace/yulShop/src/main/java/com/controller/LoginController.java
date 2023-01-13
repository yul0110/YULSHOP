package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.MemberDao;
import com.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String LoginPage() {

		return "login/login";
	}
	
	
	//로그인 아이디 체크 Ajax
	@RequestMapping(value = "/loginAjax", method = RequestMethod.POST)
	public ModelAndView loginCheckAjax(@RequestBody MemberDao memberDao) {
		
		ModelAndView mv = new ModelAndView("jsonView"); 
		
		   Integer result	= 0; //null이 들어올수 있기 때문에 Integer를 선언 
		   int flag 		= 0;  
		   
		   // 0이면 없기떄문에 로그인 실패 1이상이면 로그인 성공
		   result = loginService.selectLoginCheck(memberDao);
		   
		   if(result != null && result != 0 ) {
			   //아이디와 비번이 존재하는 경우
			   flag = 1;
		   }else {
			   //아이디와 비번이 틀린 경우
			   flag = 0;
		   }
		   //아이디와 비번이 맞을때 서버에 회원 인덱스 아이디를 저장	   
		   mv.addObject("result",flag);
		return mv;
	}
	
	// 1.아이디,비밀번호가 데이터로 들어온다.
	// flag = 0 로그인에 실패하거나 아이디나 비번이 틀린경우 
	// 2.아이디가 DB member userId에 있는지 확인.
	// 3.아이디가 있다면 비밀번호를 같이 넣었을때 조회되는지 확인.
    //디비에 userId와 pw를 넣어서 검색이 성공하는지 확인
    //로그인세션에 데이터를 넣어준다. --> 로그인이 성공했을때 어디로 보낼지 설정
    //4. 신호를 내려준다.
    //flag = 1;
    //msg = "로그인에 성공하셨습니다.";
    //아무것도 조회되지 않음 msg = "아이디나 비밀번호를 확인해주세요."; 

}
