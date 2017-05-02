package com.fitness.service;

import java.util.List;

import com.fitness.entity.BBS;

public interface BbService {

	public List<BBS> getAllBBS();
	public BBS getBBSBybbsid(Integer bbsId);
	
	public void insertBBSBybbsid(BBS bbs);
	public void deleteBBSBybbsid(Integer bbsId);
}
