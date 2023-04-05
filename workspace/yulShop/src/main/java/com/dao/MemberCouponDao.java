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
public class MemberCouponDao {
	
		private Integer id;
		
		private String couponId;
		
		private String memberId;
		
		private String issuedDate;
		
		private Date regDt;
		
		private Integer regId;
		
		private Date updateDt;
		
		private Integer updateId;
		
		private String useYn;
		
}
