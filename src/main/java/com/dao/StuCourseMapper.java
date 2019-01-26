package com.dao;

import com.bean.StuCourse;
import com.bean.StuCourseKey;

public interface StuCourseMapper {
    int deleteByPrimaryKey(StuCourseKey key);

    int insert(StuCourse record);

    int insertSelective(StuCourse record);

    StuCourse selectByPrimaryKey(StuCourseKey key);

    int updateByPrimaryKeySelective(StuCourse record);

    int updateByPrimaryKey(StuCourse record);
}