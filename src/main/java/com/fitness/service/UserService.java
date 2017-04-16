package com.fitness.service;

import java.util.List;

import com.fitness.entity.Operator;

public interface UserService {

	public Operator getById(Integer opCode);//根据opcode查询单个用户
	public List<Operator> getAll();//查询所有用户
	public void saveOperator(Operator record);
	public Operator getByQQnum(String qqnumber);//根据opcode查询单个用户
	
	
	
}
