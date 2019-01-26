package com.dao;

import com.bean.Course;

import java.util.List;
import java.util.Map;

public interface CourseMapper {
    int deleteByPrimaryKey(Integer ceId);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Integer ceId);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);

    //司_查询全部课程信息
    public List<Course> selectAllCourses(Map map);

    //司_查看单个课程信息
    public Course selectOneCourse(int ceId);

    //司_批量删除
    public int deleteManyCourses(int[] couIds);
}