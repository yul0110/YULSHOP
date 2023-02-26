package com.dao;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class FaqDao {
	
	//id
	private Integer id;
	
	//타입
	private String faqType;

	//제목
	private String title;

	//내용
	private String contents;

	//사진첨부
	private Integer sort;
	
	//작성날짜
	private Date regDt;
	
	//작성자
	private Integer regId;
	
	//수정날짜
	private Date updateDt;
	
	//수정자
	private Integer updateId;
	
		
		//사용여부
		private String useYn;

}
