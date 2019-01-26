package com.web;

import com.bean.Survey;
import com.service.SurveyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class SurveyController {
    @Autowired
    private SurveyService surveyService;

    //司_查询
    @RequestMapping("/houtai/pages/publicityManage/onePageManage/concerningUs")
    public String selectSurvey(ModelMap map) {
        Survey survey = surveyService.selectSurvey();

        map.put("survey", survey);

        return "/houtai/pages/publicityManage/onePageManage/concerningUs";
    }

    //司_修改
    @RequestMapping("/pages/publicityManage/onePageManage/concerningUsedit")
    public void updateSurvey(Survey survey, HttpServletResponse response) {
        int i = surveyService.updateSurvey(survey);
        if (i > 0) {
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('修改成功');location.href='/houtai/pages/publicityManage/onePageManage/concerningUs'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
