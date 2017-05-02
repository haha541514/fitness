package com.fitness.dao;

import com.fitness.entity.Newscontent;

public interface NewscontentMapper {
    int deleteByPrimaryKey(String newscId);

    int insert(Newscontent record);

    int insertSelective(Newscontent record);

    Newscontent selectByPrimaryKey(String newscId);

    int updateByPrimaryKeySelective(Newscontent record);

    int updateByPrimaryKey(Newscontent record);
}