package com.service.impl;

import com.bean.Notice;
import com.dao.NoticeMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeMapper noticeMapper;

    //司_查看所有公告信息
    @Override
    public PageInfo<Notice> selectAllNotice(int pageindex, int pagesize,
                                            String title, String updatetime, Integer level) {
        PageHelper.startPage(pageindex,pagesize);

        Map map = new HashMap();
        map.put("title",title);
        map.put("updatetime",updatetime);
        map.put("level",level);

        List list = noticeMapper.selectAllNotice(map);
        PageInfo pageInfo = new PageInfo(list);

        return pageInfo;
    }

    //查看单个公告信息
    @Override
    public Notice selectOneNotice(int nid) {
        return noticeMapper.selectByPrimaryKey(nid);
    }

    //司_编辑单个公告信息
    @Override
    public int updateNotice(Notice notice) {
        return noticeMapper.updateByPrimaryKeySelective(notice);
    }

    //司_单个删除
    @Override
    public int deleteNotice(int nid) {
        return noticeMapper.deleteByPrimaryKey(nid);
    }

    //批量删除
    @Override
    public int deleteManyNotices(int[] nids) {
        return noticeMapper.deleteManyNotices(nids);
    }

    @Override
    public int addNotice(Notice notice) {
        return noticeMapper.insertSelective(notice);
    }

    @Override
    public List<Notice> selectbeforeexportNotices(int[] nids) {
        List list = noticeMapper.selectbeforeexportNotices(nids);
        return list;
    }
}
