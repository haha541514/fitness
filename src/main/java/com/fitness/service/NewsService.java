package com.fitness.service;

import java.util.List;

import com.fitness.entity.News;

public interface NewsService {

	public List<News> getAllnews();//获取所有新闻
	public List<News> getAllNews2();//获取所有新闻，并获取新闻类型
	public News getNewsBynewsId(String newsId);//获取新闻内容
	public void deleteNews(String newsId);	
	public void insertnews(News news);
	public void updateNews(News news);//修改新闻
	
	
}
