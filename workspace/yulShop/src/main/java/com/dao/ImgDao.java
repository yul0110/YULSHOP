package com.dao;

import java.sql.Date;
import lombok.Data;

@Data
public class ImgDao {
	
		//id
		private Integer id;
		
		//이미지 그룹id
		private Integer imgGroupId;
		
		//이름
		private String nm;
		
		//이름
		private String path;
		
		//등록날짜
		private Date regDt;
		
		//작성자
		private Integer regId;
		
		//수정날짜
		private Date updateDt;
		
		//수정자
		private Integer updateId;
}
