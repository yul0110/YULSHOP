package com.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Coupon extends paging{
	
	//id
	private Integer id;
	
	private String nm;
	
	private String codeNum;
	
	private String couponType;
	
	private Integer couponSize;
	
	private Integer limitPrice;
	
	private Integer maxPrice;
	
	private Integer issuedCount;
	
	private Date useDate;
	
	private Date regDt;
	
	private Integer regId;
	
	private Date updateDt;
	
	private Integer updateId;
	
	private String useYn;
}
	

