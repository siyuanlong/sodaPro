package com.dao;

import com.bean.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer nsId);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer nsId);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
}