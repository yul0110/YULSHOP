package com;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

@Configuration
public class WebConfig implements WebMvcConfigurer{
    
	// 제이슨 데이터 처리
	@Bean
	MappingJackson2JsonView jsonView(){
		return new MappingJackson2JsonView();
	}
	
	// 이미지를 보여주기 위해 해당 경로를 열어줌
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) { //-- leeyul 이미지 경로 처리
		registry.addResourceHandler("/loadImg/**").addResourceLocations("file:///C:/java_dev/2.project/yulShop/workspace/yulShop/workspace/yulShop/src/main/resources/loadImg/");
		
	}
}
