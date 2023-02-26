package com.vo;

import lombok.Data;

@Data
public class Faq {
	
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
	
	//사용여부
	private String useYn;

}
