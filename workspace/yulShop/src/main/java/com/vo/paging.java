package com.vo;

import lombok.Data;

@Data
public class paging{
	
	//현재페이지
	private Integer pageNum;
	
	//이전페이지
	private Integer prevPage;
	
	//다음페이지
	private Integer nextPage;
	
	//보여지는 게시물수
	private Integer amount = 10;
	
	//총 게시물수
	private Integer total;
	
	//총 페이지수
	private Integer totalPage;
	
	//start 페이지
	private Integer firstPage;
	
	//End 페이지
	private Integer endPage;
	
	//offset data
	private Integer offset;
	
	//토탈이 100개 게시물 10개씩 잘라서 보여줌
	public void pagingSetting() {
		this.totalPage	= total % amount <= 0 ? total/amount : total/amount + 1;
		this.firstPage	= total.equals(0) ? 0 : 1;
		this.prevPage 	= pageNum > 1  ? pageNum - 1 : 1;
		this.nextPage 	= pageNum >= totalPage ? 0 : pageNum + 1;
		this.endPage 	= totalPage;
		this.offset		= pageNum <= 1 ? 0 : (pageNum - 1) * amount;
	}
}
	

