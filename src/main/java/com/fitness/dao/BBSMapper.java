package com.fitness.dao;

import java.util.List;

import com.fitness.entity.BBS;

public interface BBSMapper {
    int deleteByPrimaryKey(Integer bbsId);

    int insert(BBS record);

    int insertSelective(BBS record);

    BBS selectByPrimaryKey(Integer bbsId);

    int updateByPrimaryKeySelective(BBS record);

    int updateByPrimaryKey(BBS record);
    
   List<BBS> getAllBBS();//查询所有帖子
    
}