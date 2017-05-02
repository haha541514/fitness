package com.fitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.dao.NewsMapper;
import com.fitness.entity.News;

@Service("newsService")
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsMapper nmap;
	
	public List<News> getAllnews() {
		
		return nmap.getAllNews();
	}

	public List<News> getAllNews2() {
		
		return nmap.getAllNews2();
	}


	public News getNewsBynewsId(String newsId) {

		return nmap.selectByPrimaryKey(newsId);
	}
	public void deleteNews(String newsId){
		
		nmap.deleteByPrimaryKey(newsId);
	}	
	
	public void insertnews(News news){
		nmap.insert(news);
	}
	
	public void updateNews(News news){
		nmap.updateByPrimaryKey(news);
	}
	
}
