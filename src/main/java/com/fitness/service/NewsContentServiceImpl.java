package com.fitness.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.dao.NewscontentMapper;
import com.fitness.entity.Newscontent;

@Service("newsContentService")
public class NewsContentServiceImpl implements NewsContentService {

	@Autowired
	private NewscontentMapper ntmap;

	public Newscontent getNewsContentById(String newscId) {

		return ntmap.selectByPrimaryKey(newscId);
	}

	
	public int insertNewsContent(Newscontent newscontent){
		return ntmap.insert(newscontent);
	}
	
	
}
