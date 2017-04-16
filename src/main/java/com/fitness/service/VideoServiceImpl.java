package com.fitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.dao.VideoMapper;
import com.fitness.entity.Video;

@Service("videoService")
public class VideoServiceImpl implements VideoService {

	@Autowired
	private VideoMapper vmap;
	
	public List<Video> getAllVideo() {
		return vmap.getAllVideo();
	}

}
