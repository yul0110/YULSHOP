package com.dao;

import java.sql.Date;
import java.util.List;

import com.vo.Img;

import lombok.Data;

@Data
public class WishDao {
	
		//id
		private Integer id;

		//멤버id
		private Integer mId;
	
		//상품id
		private Integer gId;
		
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
		
		//imgPath
		private String imgPath;
		
		//img 배열
		List<Img> img;
}
