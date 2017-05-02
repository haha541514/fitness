package com.fitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.dao.NewstypeMapper;
import com.fitness.entity.Newstype;

@Service("newstypeService")
public class NewstypeServiceimpl implements NewstypeService {


	@Autowired
	private NewstypeMapper ntmap;

	public List<Newstype> getAllnewstype() {

		return ntmap.getAllNewstype();
	}

	
	
	
	
}
