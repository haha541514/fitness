package com.fitness.dao;

import java.util.List;

import com.fitness.entity.Newstype;

public interface NewstypeMapper {
    int deleteByPrimaryKey(String newstId);

    int insert(Newstype record);

    int insertSelective(Newstype record);

    Newstype selectByPrimaryKey(String newstId);

    int updateByPrimaryKeySelective(Newstype record);

    int updateByPrimaryKey(Newstype record);
    
    List<Newstype> getAllNewstype();//查询所有新闻类型
    
}