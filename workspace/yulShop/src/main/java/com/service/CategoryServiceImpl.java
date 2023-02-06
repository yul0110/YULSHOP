package com.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.mapper.CategoryMapper;
import com.vo.Category;

@Service
@Repository
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryMapper categoryMapper;
	
	@Override
	public List<Category> selectAllCategoryList() {
		return categoryMapper.selectAllCategoryList();
	}

	@Override
	public List<Category> selectCategoryList(String category) {
		return categoryMapper.selectCategoryList(category);
	}
}
