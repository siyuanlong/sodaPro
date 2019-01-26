package com.dao;

import com.bean.User;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer urId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer urId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    //司_用于判断输入名字角色是否是讲师
    public List<User> judgeName(String uname);
}