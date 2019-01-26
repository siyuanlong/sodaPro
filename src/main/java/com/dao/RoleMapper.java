package com.dao;

import com.bean.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer reId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer reId);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}