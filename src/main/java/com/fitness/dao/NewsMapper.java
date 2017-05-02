package com.fitness.dao;

import java.util.List;

import com.fitness.entity.News;

public interface NewsMapper {
    int deleteByPrimaryKey(String newsId);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(String newsId);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
    
    List<News> getAllNews();//得到所有的新闻
    
    List<News> getAllNews2();//得到所有的新闻
    
    
}