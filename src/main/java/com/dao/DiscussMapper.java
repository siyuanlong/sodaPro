package com.dao;

import com.bean.Discuss;

public interface DiscussMapper {
    int deleteByPrimaryKey(Integer dsId);

    int insert(Discuss record);

    int insertSelective(Discuss record);

    Discuss selectByPrimaryKey(Integer dsId);

    int updateByPrimaryKeySelective(Discuss record);

    int updateByPrimaryKey(Discuss record);
}