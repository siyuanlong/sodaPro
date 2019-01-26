package com.dao;

import com.bean.Notice;

import java.util.List;
import java.util.Map;

public interface NoticeMapper {
    int deleteByPrimaryKey(Integer neId);

    int insert(Notice record);

    int insertSelective(Notice record);

    Notice selectByPrimaryKey(Integer neId);

    int updateByPrimaryKeySelective(Notice record);

    int updateByPrimaryKey(Notice record);

    //查看所有公告信息
    public List selectAllNotice(Map map);

    //批量删除公告信息
    public int deleteManyNotices(int[] nids);

    //导出公告信息
    public List selectbeforeexportNotices(int[] nids);
}