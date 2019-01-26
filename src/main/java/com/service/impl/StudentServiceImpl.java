package com.service.impl;

import com.bean.Student;
import com.dao.StudentMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    //司_查询所有学生信息
    @Override
    public PageInfo<Student> selectAllStudents(String stName,String stIdcard,int pageindex,int pagesize,Integer ceId) {

        List<Student> list = null;

        PageHelper.startPage(pageindex,pagesize);

        Map map = new HashMap();
        map.put("stname",stName);
        map.put("stidcard",stIdcard);

        if (ceId!=null){
            map.put("ceId",ceId);
            list = studentMapper.selectStudentByCeid(map);
        }else{
            list = studentMapper.selectAllStudents(map);
        }
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }
    //司_根据学生id查看详情
    @Override
    public Student selectOneStudent(int stId) {
        return studentMapper.selectByPrimaryKey(stId);
    }
    //司_编辑学生信息
    @Override
    public int updateStudent(Student stu) {
        int i = studentMapper.updateByPrimaryKeySelective(stu);
        return i;
    }
    //司_删除学生信息
    @Override
    public int deleteStudent(int stId) {
        return studentMapper.deleteByPrimaryKey(stId);
    }

    //司_批量删除学生
    @Override
    public int deleteManyStudents(int[] stIds) {
        return studentMapper.deleteManyStudents(stIds);
    }

    //司_增加学生信息
    @Override
    public int addStudent(Student student) {
        return studentMapper.insert(student);
    }
}
