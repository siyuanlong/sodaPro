package com.dao;

import com.bean.Survey;

public interface SurveyMapper {
    int deleteByPrimaryKey(Integer syId);

    int insert(Survey record);

    int insertSelective(Survey record);

    Survey selectByPrimaryKey(Integer syId);

    int updateByPrimaryKeySelective(Survey record);

    int updateByPrimaryKey(Survey record);

    //查询
    public Survey selectSurvey();
}