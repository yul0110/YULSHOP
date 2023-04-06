package com.dao;

import java.sql.Date;
import lombok.Data;

@Data
public class ImgGroupDao {
	
		//멤버id
		private Integer id;
		
		//작성날짜
		private Date regDt;
		
		//작성자
		private Integer regId;
		
		//수정날짜
		private Date updateDt;
		
		//수정자
		private Integer updateId;
		
		//사용여부
		private String useYn;
}
