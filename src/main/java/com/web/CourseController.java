package com.web;

import com.bean.Course;
import com.bean.User;
import com.github.pagehelper.PageInfo;
import com.service.CourseService;
import org.activiti.engine.impl.util.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    //司_查询所有课程信息
    @RequestMapping("/houtai/pages/class/list")
    public String selectAllCourses(@RequestParam(value = "index", defaultValue = "1") int pageindex,
                                   @RequestParam(value = "size" , defaultValue = "5") int pagesize,
                                   String cname, ModelMap map){

        PageInfo<Course> pageInfo = courseService.selectAllCourses(pageindex, pagesize, cname);

        map.put("coupi",pageInfo);
        map.put("cname",cname);

        return "/houtai/pages/class/list";
    }

    //司_查看单个课程信息
    @RequestMapping("/houtai/pages/class/selectOneCourse")
    public String selectOneCourse(int ceId,ModelMap map){
        Course course = courseService.selectOneCourse(ceId);

        map.put("course",course);
        return "/houtai/pages/class/detail";
    }

   //司_编辑前查询课程信息
    @RequestMapping("/houtai/pages/class/selectbeforeedit")
    public String selectbeforeedit(int ceId,ModelMap map){
        Course editcourse = courseService.selectOneCourse(ceId);
        map.put("ecourse",editcourse);
        return "/houtai/pages/class/edit";
    }

    //司_编辑课程信息
    @RequestMapping("/houtai/pages/class/edit")
    public void updateCourse(Course course,String uname,HttpServletResponse response){
        //该处默认数据库中姓名不重复
        List<User> users = courseService.judgeName(uname);
        Integer urId = users.get(0).getUrId();
        course.setCeUserid(urId);
        int i = courseService.updateCourse(course);
        if (i>0){
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('修改成功');location.href='/houtai/pages/class/list'</script>");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    //司_编辑课程信息时判断输入的姓名是否是讲师
    @RequestMapping("/houtai/pages/class/judgename")
    public void judgename(String uname, HttpServletResponse response){
        JSONObject jsonObject = new JSONObject();
        List<User> users = courseService.judgeName(uname);
        if (users.size()>0){
            jsonObject.put("message","存在");
        }else{
            jsonObject.put("message","不存在");
        }
        try {
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().write(jsonObject.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //司_批量删除课程信息
    @RequestMapping("/houtai/pages/class/deleteManyCourses")
    public void deleteManyCourses(int[] couIds,HttpServletResponse response){
        int i = courseService.deleteManyCourses(couIds);
        if (i>0){
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('批量成功');location.href='/houtai/pages/class/list'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //司_结课和下架
    @RequestMapping("/houtai/pages/class/updateJk")
    public void deleteManyCourses(Course course,HttpServletResponse response){
        int i = courseService.updateJk(course);
        if (i>0){
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('已成功修改课程状态');location.href='/houtai/pages/class/list'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //司_增加课程信息
    @RequestMapping("/houtai/pages/class/add")
    public void addCourse(Course course, String uname,
                          MultipartFile myfile, HttpServletResponse response,
                          HttpServletRequest request){
        if (myfile!=null){
            String filename = myfile.getOriginalFilename();
            String pathname = request.getRealPath("/upload");
            String finalname = pathname+"/"+filename;
            course.setCeVideo("/upload/"+filename);
            try {
                myfile.transferTo(new File(finalname));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        List<User> users = courseService.judgeName(uname);
        Integer urId = users.get(0).getUrId();
        course.setCeUserid(urId);

        int i = courseService.addCourse(course);
        if (i>0){
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('添加课程信息成功');location.href='/houtai/pages/class/list'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}
