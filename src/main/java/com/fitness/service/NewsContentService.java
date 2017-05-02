package com.fitness.service;

import com.fitness.entity.Newscontent;



public interface NewsContentService {

	public Newscontent getNewsContentById(String newscId);//查询新闻内容
	
	public int insertNewsContent(Newscontent newscontent);
	
	
}
