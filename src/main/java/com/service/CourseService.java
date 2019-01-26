package com.service;

import com.bean.Course;
import com.bean.Student;
import com.bean.User;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface CourseService {

    //司_查询全部课程信息
    public PageInfo<Course> selectAllCourses(int pageindex, int pagesize, String cname);

    //司_查看单个课程信息
    public Course selectOneCourse(int ceId);

    //司_用于判断输入名字角色是否是讲师
    public List<User> judgeName(String uname);

    //司_用于修改课程表
    public int updateCourse(Course course);

    //司_批量删除
    public int deleteManyCourses(int[] couIds);

    //司_结课下架
    public int updateJk(Course course);

    //司_新增课程信息
    public int addCourse(Course course);

}
