package com.fitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.dao.OperatorMapper;
import com.fitness.entity.Operator;



@Service("userService")
public class UserServiceImpl implements UserService {

	
	@Autowired
	private OperatorMapper opmap;
	
	public Operator getById(Integer opCode) {
		return opmap.selectByPrimaryKey(opCode);
		
	}

	
	public List<Operator> getAll() {
		return opmap.getAll();
	}
	
	public void saveOperator(Operator record){
		opmap.insert(record);
	}
	
	public Operator getByQQnum(String qqnumber){
		return opmap.selectByQQnumber(qqnumber);
	}
}
