package com.fitness.dao;

import java.util.List;

import com.fitness.entity.Video;

public interface VideoMapper {
    int deleteByPrimaryKey(String videoId);

    int insert(Video record);

    int insertSelective(Video record);

    Video selectByPrimaryKey(String videoId);

    int updateByPrimaryKeySelective(Video record);

    int updateByPrimaryKey(Video record);
    
    
    List<Video> getAllVideo();//查询所有视频
    
}