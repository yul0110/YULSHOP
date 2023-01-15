package com.dao;

import lombok.Data;

@Data
public class InquiryDao {

	//1:1문의 id
	private Integer id;
	
	//제목
	private String title;

	//내용
	private String context;
	
	//멤버 아이디
	private Integer mid;

	private String useYn;
	
	private String regId;
	
	private String updateId;
	
}

