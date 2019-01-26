package com.service;

import com.bean.Notice;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface NoticeService {
     //司_查看所有公告信息
     public PageInfo<Notice> selectAllNotice(int pageindex, int pagesize,
                                             String title, String updatetime, Integer level);

     //司_查看单个公告信息
     public Notice selectOneNotice(int nid);

     //司_编辑单个公告信息
     public int updateNotice(Notice notice);

     //司_删除单个公告信息
     public int deleteNotice(int nid);

    //批量删除公告信息
    public int deleteManyNotices(int[] nids);

    //增加公告新消息
    public int addNotice(Notice notice);

    //导出公告信息
    public List<Notice> selectbeforeexportNotices(int[] nids);
}
