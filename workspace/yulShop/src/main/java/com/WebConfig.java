package com;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

@Configuration
public class WebConfig implements WebMvcConfigurer{
    
	@Bean
	MappingJackson2JsonView jsonView(){
		return new MappingJackson2JsonView();
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/loadImg/**").addResourceLocations("file:///C:/java_dev/2.project/yulShop/workspace/yulShop/workspace/yulShop/src/main/resources/loadImg/");
		
	}
}
