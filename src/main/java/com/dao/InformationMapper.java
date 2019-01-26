package com.dao;

import com.bean.Information;

public interface InformationMapper {
    int deleteByPrimaryKey(Integer inId);

    int insert(Information record);

    int insertSelective(Information record);

    Information selectByPrimaryKey(Integer inId);

    int updateByPrimaryKeySelective(Information record);

    int updateByPrimaryKey(Information record);
}