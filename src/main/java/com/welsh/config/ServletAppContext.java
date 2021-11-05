package com.welsh.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

//servlet -context.xml ��泥�

@Configuration

//controller annotation�씠 遺숈뼱�엲�뒗 calss瑜� Controller 濡�  �벑濡앺빐以��떎.
@EnableWebMvc

//scan �븷 �뙣�궎吏� 吏��젙 annotation�� 留덉�留됱뿉 ;�쓣 �벐吏� �븡�뒗�떎.
@ComponentScan("com.welsh.controller")
public class ServletAppContext implements WebMvcConfigurer{
	
	
	//ViewResolver
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("WEB-INF/views/",".jsp");
	}
	//�젙�쟻 �뙆�씪 �뀑�똿
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
		
		
		//registry.addResourceHandler("/productImage/**").addResourceLocations("file:///c:/productImage/");
		registry.addResourceHandler("/productImage/**").addResourceLocations("file:////home/ubuntu/uploadFiles/");
	}

}
