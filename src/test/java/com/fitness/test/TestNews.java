package com.fitness.test;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.fitness.entity.News;
import com.fitness.service.NewsService;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;


public class TestNews {
	private ApplicationContext ac;
	@Autowired
	private NewsService  service;
	/*extends SpringJUnit4ClassRunner和@RunWith(SpringJUnit4ClassRunner.class)效果一样
	  spring-test 和junit效果一样 
	  @RunWith(SpringJUnit4ClassRunner.class)
	@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mybatis.xml" })
	@Autowired自动注入
	*/	
	private static final Logger logger = Logger.getLogger(TestNews.class);
	@Before
	public void before(){
		//junit测试类，也可以用spring-test类
		ac = new ClassPathXmlApplicationContext(new String[]{"spring.xml","spring-mybatis.xml"});
		service = (NewsService) ac.getBean("newsService");
	}

	
    @Test
	public void test1(){
		
		List<News> allnews = service.getAllnews();
		for(News news:allnews){
			System.out.println(news.getNewsTitle());
		}
		/*List<News> allNews2 = service.getAllNews2();
		for(News news:allNews2){
			System.out.println(news.getNtype().getNewstType());
		}*/
		
	}

	
  
	


	
}
