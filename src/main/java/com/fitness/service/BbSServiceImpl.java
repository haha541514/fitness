package com.fitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.dao.BBSMapper;
import com.fitness.entity.BBS;

@Service("bbService")
public class BbSServiceImpl implements BbService {

	@Autowired
	private BBSMapper bmap;
	
	
	
	public List<BBS> getAllBBS() {
		
		return bmap.getAllBBS();
	}
	public BBS getBBSBybbsid(Integer bbsId){
		
		return bmap.selectByPrimaryKey(bbsId);
	}
	
	public void insertBBSBybbsid(BBS bbs) {

		bmap.insert(bbs);
	}


	public void deleteBBSBybbsid(Integer bbsId) {

		bmap.deleteByPrimaryKey(bbsId);
	}
	
	

}
