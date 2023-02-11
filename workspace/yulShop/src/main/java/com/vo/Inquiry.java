package com.vo;

import java.sql.Date;
import java.util.List;
import lombok.Data;

@Data
public class Inquiry {
	
	//id
	private Integer id;
	
	//제목
	private String title;

	//내용
	private String context;

	//사진첨부
	private Integer imgGroupId;
	
	//작성날짜
	private Date regDt;
	
	//작성자
	private Integer regId;
	
	//수정날짜
	private Date updateDt;
	
	//수정자
	private Integer updateId;
	
	//리스트이미지 경로
	private List<String> listImgPathArr;
}
	

