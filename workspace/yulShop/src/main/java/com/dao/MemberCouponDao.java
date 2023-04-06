package com.dao;

import java.sql.Date;
import org.springframework.stereotype.Repository;
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
