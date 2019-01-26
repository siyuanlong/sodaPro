package com.dao;

import com.bean.Industry;

public interface IndustryMapper {
    int deleteByPrimaryKey(Integer iyId);

    int insert(Industry record);

    int insertSelective(Industry record);

    Industry selectByPrimaryKey(Integer iyId);

    int updateByPrimaryKeySelective(Industry record);

    int updateByPrimaryKey(Industry record);
}