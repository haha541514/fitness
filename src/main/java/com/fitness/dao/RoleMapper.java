package com.fitness.dao;

import com.fitness.entity.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer roleCode);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer roleCode);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}