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
		private Integer memberId;
	
		//상품id
		private Integer goodsId;
		
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
		
		//상품이름
		private String gNm;
		
		//img 배열
		List<Img> img;
}
