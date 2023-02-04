package com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.vo.Category;


@Mapper
public interface CategoryMapper {
	
	//상품 정보 등록
	List<Category> selectAllCategoryList();
	
}
