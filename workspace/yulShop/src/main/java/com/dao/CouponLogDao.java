package com.dao;

import java.sql.Date;
import org.springframework.stereotype.Repository;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
@Data
public class CouponLogDao {
	
		//id
		private Integer id;
		
		private Integer couponId;
		
		private Integer memberId;
		
		private String reason;
		
		private Date regDt;
		
		private Integer regId;
		
		private Date updateDt;
		
		private Integer updateId;
		
		private String searchNm;
		
		private String searchType;
}
