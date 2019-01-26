package com.service;

import com.bean.Survey;

public interface SurveyService {

    //司_查询
    public Survey selectSurvey();

    //司_修改
    public int updateSurvey(Survey survey);

}
