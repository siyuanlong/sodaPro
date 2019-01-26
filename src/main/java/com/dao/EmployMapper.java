package com.dao;

import com.bean.Employ;

public interface EmployMapper {
    int insert(Employ record);

    int insertSelective(Employ record);
}