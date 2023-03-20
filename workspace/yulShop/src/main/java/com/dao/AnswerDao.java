package com.dao;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mapper.BackOfficeMapper;
import com.vo.Inquiry;
import com.vo.paging;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
@Data
public class AnswerDao{
	
	//id
	private Integer qid;
	
	//제목
	private String title;

	//내용
	private String context;
	
	//작성날짜
	private Date regDt;
	
	//작성자
	private Integer regId;
	
	//수정날짜
	private Date updateDt;
	
	//수정자
	private Integer updateId;
	
}

