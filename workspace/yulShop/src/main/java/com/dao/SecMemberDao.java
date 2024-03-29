package com.dao;

import java.sql.Date;
import lombok.Data;

@Data
public class SecMemberDao {
	
		//멤버id
		private Integer id;
		
		//유저아이디
		private String userId;
		
		//유저 비밀번호
		private String pw;
		
		//유저 비밀번호 체크
		private String pwc;

		//이름
		private String nm;
		
		//생일
		private String birth;
		
		//휴대폰 번호
		private String pno;

		//주소값
		private String addr1;
		
		//상세 주소
		private String addr2;
		
		//바디 사이즈 
		private String bodySize;
		
		//등급
		private String lv;
		
		//작성날짜
		private Date regDt;
		
		//작성자
		private Integer regId;
		
		//수정날짜
		private Date updateDt;
		
		//수정자
		private Integer updateId;
}
	

