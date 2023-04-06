package com.dao;

import java.sql.Date;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.vo.paging;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
@Data
public class EventDao extends paging{
	
	//id
	private Integer id;
	
	//listImgId 
	private Integer listImg;
	
	//detailImgId 
	private Integer detailImg;
	
	//제목
	private String title;

	//내용
	private String contents;
	
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
	
	//메인이미지 경로
	private List<String> listImgPathArr;
	
	//상세이미지 경로
	private List<String> detailImgPathArr;

}
