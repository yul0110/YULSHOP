package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dao.MemberDao;
import com.service.CategoryService;
import com.service.LoginService;
import com.vo.Category;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@Autowired
	CategoryService categoryService;
	
	// 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView LoginPage() {

		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName("login/login"); 
		return mv;
	}
	
	// 아이디 찾기 페이지
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public ModelAndView findIdPage() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName("login/findId"); 
		return mv;
	}
	
	// 비밀번호 찾기 페이지
	@RequestMapping(value = "/findPw", method = RequestMethod.GET)
	public ModelAndView findPwPage() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName("login/findPw"); 
		return mv;
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

	
	// 아이디 찾기 Ajax
	@RequestMapping(value = "/findIdAjax", method = RequestMethod.POST)
	public ModelAndView findIdAjax(@RequestBody MemberDao memberDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		// result 값이 0이면 아무것도 변경하지 못한것 1이면 무언가 변경한것 그 변경한 레코드의 값을 가져온것
		Integer result	= 0; //null이 들어올수 있기 때문에 Integer를 선언 
		String userId 	= "";  
		   
		// 0이면 없기떄문에 로그인 실패 1이상이면 로그인 성공
		userId = loginService.selectfindId(memberDao);
		
		if(userId != null && !userId.equals("")) {
			result = 1;
			mv.addObject("findId", userId);
		}else {
			result = 0;
		}	
		
		mv.addObject("result", result);
		return mv;
	}
	
	// 비밀번호 찾기 Ajax
	@RequestMapping(value = "/findPwAjax", method = RequestMethod.POST)
	public ModelAndView findPwAjax(@RequestBody MemberDao memberDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");

		int result = loginService.selectfindPw(memberDao);
		
		if(result != 0) {
			//문자메세지 전송 코드			
		}
		mv.addObject("result", result);
		return mv;
	}
}
