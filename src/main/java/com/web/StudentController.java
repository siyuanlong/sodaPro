package com.web;

import com.bean.Student;
import com.github.pagehelper.PageInfo;
import com.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

    //司_查询所有学生信息(以及查看课程的学生信息)
    @RequestMapping("/houtai/pages/stu/list")
    public String selectAllStudents(@RequestParam(value = "index", defaultValue = "1") int pageindex,
                                    @RequestParam(value = "size", defaultValue = "5") int pagesize,
                                    String stName, String stIdcard,Integer ceId,ModelMap map) {

        /*
            ceId变量用于查看课程的学生信息
        */
        System.out.println("hello world!");
        PageInfo<Student> pageInfo =
                studentService.selectAllStudents(stName, stIdcard, pageindex, pagesize, ceId);

       if (ceId!=null){
           map.put("ceId",ceId);
       }
        map.put("stupi", pageInfo);
        map.put("stname",stName);
        map.put("stidcard",stIdcard);
        return "/houtai/pages/stu/list";
    }

    //司_根据学生id查看详情
    @RequestMapping("/houtai/pages/stu/detail")
    public String selectOneStudent(int stId, ModelMap map) {
        Student student = studentService.selectOneStudent(stId);
        map.put("student", student);
        return "/houtai/pages/stu/detail";
    }

    /*司_编辑*/
    //1.查询前查询回显数据
    @RequestMapping("/houtai/pages/stu/selectberoreedit")
    public String selectBeroreEdit(int stId, ModelMap map) {
        Student student = studentService.selectOneStudent(stId);
        map.put("student", student);
        return "/houtai/pages/stu/edit";
    }

    //2.编辑学生信息
    @RequestMapping("/houtai/pages/stu/edit")
    public void updateStudent(Student student, HttpServletResponse response) {
        int i = studentService.updateStudent(student);
        if (i > 0) {
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('修改成功');location.href='/houtai/pages/stu/list'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //司_删除学生
    @RequestMapping("/houtai/pages/stu/deleteStudent")
    public void deleteStudent(int stId,Integer ceId, HttpServletResponse response) {
        int i = studentService.deleteStudent(stId);
        if (i > 0) {
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('删除成功');location.href='/houtai/pages/stu/list?ceId="+ceId+"'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //司_批量删除学生
    @RequestMapping("/houtai/pages/stu/deleteManyStudents")
    public void deleteManyStudents(int[] stIds,Integer ceId, HttpServletResponse response) {
        int i = studentService.deleteManyStudents(stIds);
        if (i > 0) {
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('批量删除成功');location.href='/houtai/pages/stu/list?ceId="+ceId+"'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //司_新增学生
    @RequestMapping("/houtai/pages/stu/add")
    public void addStudent(Student student,HttpServletResponse response){
        int i = studentService.addStudent(student);
        if (i > 0) {
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('增加成功');location.href='/houtai/pages/stu/list'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
