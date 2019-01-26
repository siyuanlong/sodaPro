package com.web;

import com.bean.Notice;
import com.github.pagehelper.PageInfo;
import com.service.NoticeService;
import com.util.NoticePoiUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    //司_查询全部公告信息
    @RequestMapping("/houtai/pages/afficheManage/index")
    public String selectAllNotice(@RequestParam(value = "index", defaultValue = "1") int pageindex,
                                  @RequestParam(value = "size", defaultValue = "5") int pagesize,
                                  String title, String updatetime, Integer level, ModelMap map) {
        System.out.println("title====" + title);
        System.out.println("updatetime====" + updatetime);
        System.out.println("level====" + level);

        PageInfo<Notice> pageInfo =
                noticeService.selectAllNotice(pageindex, pagesize, title, updatetime, level);

        map.put("title", title);
        map.put("updatetime", updatetime);
        map.put("level", level);
        map.put("noticepi", pageInfo);

        return "/houtai/pages/afficheManage/index";
    }

    //司_查询单个公告信息
    @RequestMapping("/houtai/pages/afficheManage/selectOneNotice")
    public String selectOneNotice(int nid, ModelMap map) {
        Notice notice = noticeService.selectOneNotice(nid);
        map.put("notice", notice);
        return "/houtai/pages/afficheManage/lookImpl";
    }

    //司_编辑前查询公告信息
    @RequestMapping("/houtai/pages/afficheManage/selectbeforeedit")
    public String selectbeforeedit(int nid, ModelMap map) {
        Notice notice = noticeService.selectOneNotice(nid);
        map.put("notice", notice);
        return "/houtai/pages/afficheManage/edit";
    }

    //司_编辑公告信息
    @RequestMapping("/houtai/pages/afficheManage/edit")
    public void updateNotice(Notice notice, String authorname, HttpServletResponse response) {
        int i = noticeService.updateNotice(notice);
        if (i > 0) {
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('修改信息成功');location.href='/houtai/pages/afficheManage/index'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //司_删除公告信息
    @RequestMapping("/houtai/pages/afficheManage/deleteNotice")
    public void deleteNotice(int nid, HttpServletResponse response) {
        int i = noticeService.deleteNotice(nid);
        if (i > 0) {
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('删除成功');location.href='/houtai/pages/afficheManage/index'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //司_批量删除公告信息
    @RequestMapping("/houtai/pages/afficheManage/deleteManyNotices")
    public void deleteNotice(int[] nids, HttpServletResponse response) {
        int i = noticeService.deleteManyNotices(nids);
        if (i > 0) {
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('批量删除成功');location.href='/houtai/pages/afficheManage/index'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //司_增加公告信息
    @RequestMapping("/houtai/pages/afficheManage/add")
    public void addNotice(Notice notice, String uname, HttpServletResponse response) {
        notice.setNeUpdatetime(new Date());
        int i = noticeService.addNotice(notice);
        if (i > 0) {
            try {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write("<script>alert('增加成功');location.href='/houtai/pages/afficheManage/index'</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //司_导出excel表格
    @RequestMapping("/houtai/pages/afficheManage/exportNotices")
    public void excelExport(int[] nids , ModelMap map, HttpServletResponse response){
        List<Notice> nlist = noticeService.selectbeforeexportNotices(nids);

        for (Notice notice : nlist) {
            System.out.println("时间:"+notice.getNeUpdatetime());
        }

        String[] headers = {"ID", "标题", "更新时间", "公告级别"};
        SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMhhHHmmss");
        String format = sdf.format(new Date());
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream("d://" + format + ".xls");
            NoticePoiUtil.firstRow(headers);
            NoticePoiUtil.otherRows(nlist);
            NoticePoiUtil.export(fos);
            response.getWriter().write("<script>alert('导出成功');location.href='/houtai/pages/afficheManage/index'</script>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
