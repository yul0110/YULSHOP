package com.mapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.MemberDao;
import com.service.LoginService;

@Service
public class LoginserviceImpl implements LoginService {

	@Autowired
	LoginMapper loginMapper; 
	
	@Override
	public Integer selectLoginCheck(MemberDao memberDao) {
		
		Integer idFlag  = 0;
		Integer id 		= 0;
			
		//아이디 체크
		idFlag = loginMapper.selectLoginIdCheck(memberDao);
		
		if(idFlag != null && idFlag != 0 ) { 
			//아이디가 존재하는 경우
			//아이다, 비번 체크
			id = loginMapper.selectLoginCheck(memberDao);
		}
		return id;
	}

	//아이디 분실
	@Override
	public String selectfindId(MemberDao memberDao) {
		return loginMapper.selectfindId(memberDao);
	}

	//비밀번호 분실
	@Override
	public int selectfindPw(MemberDao memberDao) {
		return loginMapper.selectfindPw(memberDao);
	}


	
	// 디비에 직접적으로 영향을 주는 데이터는 serviceImpl에서 작업을 한다.
	// 서비스에서 데이터베이스 오류가 생길시 자바는 데이터베이스익셉션이 발생하기 때문에 트렌젝션 셋팅이 서비스에서 데이터베이스익셉션이
	// 작동하도록 셋팅하기 때문이다.(대부분 아닌 경우도 있음)
}
