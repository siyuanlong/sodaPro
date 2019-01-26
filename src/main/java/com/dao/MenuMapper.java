package com.dao;

import com.bean.Menu;

public interface MenuMapper {
    int deleteByPrimaryKey(Integer muId);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer muId);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}