package com.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class member {
	
		//멤버id
		private Integer id;
		
		//이름
		private String nm;
		
		//유저아이디
		private String userId;
		
		//생일
		private String birth;
		
		//휴대폰 번호
		private String pno;

		//주소값
		private String addr1;
		
		//주소 나머지
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
	

