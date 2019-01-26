package com.service;

import com.bean.Student;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface StudentService {
    //司_查询所有学生信息
    public PageInfo<Student> selectAllStudents(String stName, String stIdcard, int pageindex, int pagesize,Integer ceId);
    //司_根据学生id查看详情
    public Student selectOneStudent(int stId);
    //司_编辑学生信息
    public int updateStudent(Student stu);
    //司_删除学生信息
    public int deleteStudent(int stId);
    //司_批量删除学生
    public int deleteManyStudents(int[] stIds);
    //司_增加学生信息
    public int addStudent(Student student);
}
