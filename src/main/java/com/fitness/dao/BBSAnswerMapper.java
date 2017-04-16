package com.fitness.dao;

import com.fitness.entity.BBSAnswer;

public interface BBSAnswerMapper {
    int deleteByPrimaryKey(Integer bbsanswerId);

    int insert(BBSAnswer record);

    int insertSelective(BBSAnswer record);

    BBSAnswer selectByPrimaryKey(Integer bbsanswerId);

    int updateByPrimaryKeySelective(BBSAnswer record);

    int updateByPrimaryKey(BBSAnswer record);
}