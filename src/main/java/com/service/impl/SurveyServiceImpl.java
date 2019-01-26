package com.service.impl;

import com.bean.Survey;
import com.dao.SurveyMapper;
import com.service.SurveyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SurveyServiceImpl implements SurveyService {

    @Autowired
    private SurveyMapper surveyMapper;

    @Override
    public Survey selectSurvey() {
        Survey survey = surveyMapper.selectSurvey();
        return survey;
    }

    @Override
    public int updateSurvey(Survey survey) {
        return surveyMapper.updateByPrimaryKeySelective(survey);
    }
}
