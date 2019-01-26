package com.dao;

import com.bean.Student;

import java.util.List;
import java.util.Map;

public interface StudentMapper {
    int deleteByPrimaryKey(Integer stId);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer stId);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    //司_查询所有学生信息
    public List<Student> selectAllStudents(Map map);

    //司_批量删除学生
    public int deleteManyStudents(int[] stIds);

    //司_查看课程的学生信息
    public List<Student> selectStudentByCeid(Map map);

}