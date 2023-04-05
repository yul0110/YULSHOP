package com.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberCoupon {
	
	private Integer id;
	
	private String couponId;
	
	private String memberId;
	
	private String issuedDate;
	
	private Date regDt;
	
	private Integer regId;
	
	private Date updateDt;
	
	private Integer updateId;
	
	private String useYn;
	
	private String nm;	
}
	

