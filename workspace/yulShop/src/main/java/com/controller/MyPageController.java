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
import com.service.MyPageService;
import com.vo.Category;
import com.vo.Member;

@Controller
public class MyPageController {
	
	@Autowired
	MyPageService MyPageService;
	
	@Autowired
	CategoryService categoryService;
	
	//마이 페이지
	@RequestMapping(value = "/memberMyPage", method = RequestMethod.GET)
	public ModelAndView MyPage() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		
		mv.addObject("categoryList", categoryList);
		mv.setViewName("myPage/memberMyPage"); 
		//mv.setViewName("myPage/memberMyPage"); //컨트롤러에서 JSP로 데이터를 넘기기 위해 
		return mv;
    }
	
	//탈퇴 페이지
	@RequestMapping(value = "/memberResign", method = RequestMethod.GET)
	public ModelAndView memberResignPage() {
		
		ModelAndView mv = new ModelAndView();	
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		mv.addObject("categoryList", categoryList);
		
		mv.setViewName("myPage/memberResign"); //컨트롤러에서 JSP로 데이터를 넘기기 위해 
		
		return mv;
    }

		
	//회원정보 수정 페이지
	@RequestMapping(value = "/memberUpdate", method = RequestMethod.GET)
	public ModelAndView memberUpdatePage() {
		
		ModelAndView mv = new ModelAndView();
		
		//더미데이터 로그인 기능이 완성 되지 않아 임시로 회원데이터 넣음
		int id = 1;
		
		List<Member> memberList = MyPageService.selectMemberData(id);
		Member memberData = memberList.get(0);
		
		List<Category> categoryList = categoryService.selectAllCategoryList();
		mv.addObject("categoryList", categoryList);
		
		mv.setViewName("myPage/memberUpdate"); //컨트롤러에서 JSP로 데이터를 넘기기 위해 
		mv.addObject("memberData", memberData);
		
		return mv;
    }
	
	
	//회원정보 비밀번호 수정 Ajax
	@RequestMapping(value = "/pwUpdateAjax", method = RequestMethod.POST)
	public ModelAndView pwUpdateAjax(@RequestBody MemberDao memberDao) {
		
	   ModelAndView mv = new ModelAndView("jsonView");
	   
	 //더미데이터 로그인 기능이 완성 되지 않아 임시로 회원데이터 넣음
	   memberDao.setId(1);
	   
	   int  result = MyPageService.updateMemberPw(memberDao);		 
	   mv.addObject("result",result);
	   return mv;
	}

	
	//회원정보 주소 수정 Ajax
	@RequestMapping(value = "/memberUpdateAjax", method = RequestMethod.POST)
	public ModelAndView addrUpdateAjax(@RequestBody MemberDao memberDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		//더미데이터 로그인 기능이 완성 되지 않아 임시로 회원데이터 넣음
		memberDao.setId(1);
		
		int result = MyPageService.updateMemberAddr(memberDao);
		mv.addObject("result", result);
		
		return mv;
	}
	
	
	//회원탈퇴 Ajax
	@RequestMapping(value = "/memberResignAjax", method = RequestMethod.POST)
	public ModelAndView memberResignAjax(@RequestBody MemberDao memberDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");	//ModelAndView mv = new ModelAndView("jsonView") 페이지에서 데이터만 담아가겠다는 뜻
		
		//더미데이터 로그인 기능이 완성 되지 않아 임시로 회원데이터 넣음
		memberDao.setId(1);
		int result = MyPageService.selectResignCheck(memberDao);
		mv.addObject("result", result);
		return mv;
	}
	

	//회원탈퇴 확인 Ajax
	@RequestMapping(value = "/memberResignOkAjax", method = RequestMethod.POST)
	public ModelAndView memberResignOkAjax(@RequestBody MemberDao memberDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		//로그인된 회원 객체에서 인덱스 아이디를 꺼내서 넣어줌
		//인덱스 아이디를 이용해서 삭제 쿼리를 사용했다는 가정하고 처리값을 받아서 result에 넣어줌
		mv.addObject("result", 1);
		return mv;
	}

	  
}
