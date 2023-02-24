package com.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Img {

	private Integer id;

	private Integer imgGroupId;
	
	private String imgNm;
	
	private String path;
	
	private Date regDt;
	
	private Integer regId;
	
	private Date updateDt;
	
	private Integer updateId;
}
	

