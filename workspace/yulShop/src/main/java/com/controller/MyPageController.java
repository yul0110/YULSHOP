package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dao.MemberDao;
import com.service.MyPageService;
import com.vo.Member;

@Controller
@org.springframework.web.bind.annotation.RestController
public class MyPageController {
	
	@Autowired
	MyPageService MyPageService;
	
	
	//마이 페이지
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public String MyPage() {

		return "mypage/mypage";
    }
	
	
	//회원정보 수정 페이지
	@RequestMapping(value = "/memberUpdate", method = RequestMethod.GET)
	public ModelAndView memberUpdatePage() {
		
		ModelAndView mv = new ModelAndView();
		
		//로그인 구현이 안되어 있으므로 더미데이터 입력 ------------------------------
		int id = 1;
		
		List<Member> memberList = MyPageService.selectMemberData(id);
		Member memberData = memberList.get(0);
		
		mv.setViewName("myPage/memberUpdate"); //컨트롤러에서 JSP로 데이터를 넘기기 위해 
		mv.addObject("memberData", memberData);
		
		return mv;
    }
	
	
	//회원정보 비밀번호 수정 Ajax
	@RequestMapping(value = "/pwUpdateAjax", method = RequestMethod.POST)
	public ModelAndView pwUpdateAjax(@RequestBody MemberDao memberDao) {
		
	   ModelAndView mv = new ModelAndView("jsonView");
	   
	   memberDao.setId(1);
	   
	   int  result = MyPageService.updateMemberPw(memberDao);		 
	   mv.addObject("result",result);
	   return mv;
	}

	
	//회원정보 주소 수정 Ajax
	@RequestMapping(value = "/memberUpdateAjax", method = RequestMethod.POST)
	public ModelAndView addrUpdateAjax(@RequestBody MemberDao memberDao) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		memberDao.setId(1);
		
		int result = MyPageService.updateMemberAddr(memberDao);
		mv.addObject("result", result);
		
		return mv;
	}
	
	
	  
}
