package com.service.impl;

import com.bean.Course;
import com.bean.Student;
import com.bean.User;
import com.dao.CourseMapper;
import com.dao.StudentMapper;
import com.dao.UserMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseMapper courseMapper;

    //司_查询全部课程信息
    @Override
    public PageInfo<Course> selectAllCourses(int pageindex,int pagesize,String cname) {

        PageHelper.startPage(pageindex,pagesize);

        Map map = new HashMap();
        map.put("cname",cname);

        List<Course> list = courseMapper.selectAllCourses(map);
        PageInfo pageInfo = new PageInfo(list);

        return pageInfo;
    }

    //司_查看单个课程信息
    @Override
    public Course selectOneCourse(int ceId) {
        return courseMapper.selectOneCourse(ceId);
    }
    //司_用于判断输入名字角色是否是讲师
    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> judgeName(String uname) {
        List<User> users = userMapper.judgeName(uname);
        return users;
    }

    //司_用于修改课程资料
    @Override
    public int updateCourse(Course course) {
        return courseMapper.updateByPrimaryKeySelective(course);
    }

    @Override
    public int deleteManyCourses(int[] couIds) {
        return courseMapper.deleteManyCourses(couIds);
    }

    @Override
    public int updateJk(Course course) {
        return courseMapper.updateByPrimaryKeySelective(course);
    }

    @Override
    public int addCourse(Course course) {
        int i = courseMapper.insertSelective(course);
        return i;
    }
}
