package com.vo;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class Goods {

	//멤버id
	private Integer id;
	
	//옵션 외래키
	private Integer optionsId;
	
	//카테고리 
	private String cateId;
	
	//상품번호
	private Integer no;
	
	//상품이름
	private String nm;
	
	//상품가격
	private Integer price;
	
	//할인가격
	private Integer dprice;
	
	//입고일자
	private Date wareHousing;

	//상품상태
	private String goodsState;
	
	//상품설명
	private String info;
	
	//상세설명
	private String descliption;
	
	//상품소재
	private String fabric;
		
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
	
	//option 배열
	List<Option> option;
}
	

