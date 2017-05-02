package com.fitness.dao;

import java.util.List;

import com.fitness.entity.Operator;

public interface OperatorMapper {
    int deleteByPrimaryKey(Integer opCode);

    int insert(Operator record);

    int insertSelective(Operator record);

    Operator selectByPrimaryKey(Integer opCode);

    int updateByPrimaryKeySelective(Operator record);

    int updateByPrimaryKey(Operator record);
    
    List<Operator> getAll();
    
    Operator selectByQQnumber(String qqnum);//通过QQ好查询用户
}