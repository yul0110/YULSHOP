package com.dao;

import java.sql.Date;
import lombok.Data;

@Data
public class OptionDao {
	
		//멤버id
		private Integer id;

		//멤버id
		private Integer goodsId;
		
		//상품이름
		private String color;

		//상품이름
		private String sz;
		
		//상품가격
		private Integer inventory;
		
		//작성날짜
		private Date regDt;
		
		//작성자
		private Integer regId;
		
		//수정날짜
		private Date updateDt;
		
		//수정자
		private Integer updateId;
}
