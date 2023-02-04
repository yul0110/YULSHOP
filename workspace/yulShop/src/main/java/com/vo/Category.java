package com.vo;

import lombok.Data;

@Data
public class Category {
	
	//카테고리 풀경로
	String cateFullNm;
	
	//이름
	String cateNm;
	
	//코드
	String cateCode;
	
	//부모코드
	String cateCodeRef;
}
	

