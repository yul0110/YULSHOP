package com.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

import lombok.Data;

@Data
public class Member {
	
	//멤버id
	private Integer id;
	
	//유저아이디
	private String userId;

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
	
	//회원 포인트
	private Integer point;
	
	//회원 등급
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
	

