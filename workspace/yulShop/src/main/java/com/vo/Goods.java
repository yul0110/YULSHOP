package com.vo;

import java.util.List;

import lombok.Data;

@Data
public class Goods {

	Integer id;

	Integer no;
	
	String nm;
	
	Integer price;
	
	Integer dprice;
	
	String fabric;

	String info;

	String descliption;
	
	String imgPath;
	
	List<Img> img;
	
	List<Option> option;
}
	

