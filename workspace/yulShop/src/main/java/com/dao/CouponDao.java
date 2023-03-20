package com.dao;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.vo.paging;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
@Data
public class CouponDao  extends paging{
	
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
		
		private List<OptionDao> optionArr;
		
		private List<String> listImgPathArr;
		
		private List<String> detailImgPathArr;
		
		private String searchNm;
		
		private String searchType;
		
}
