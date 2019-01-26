package com.dao;

import com.bean.Contact;

public interface ContactMapper {
    int deleteByPrimaryKey(Integer ctId);

    int insert(Contact record);

    int insertSelective(Contact record);

    Contact selectByPrimaryKey(Integer ctId);

    int updateByPrimaryKeySelective(Contact record);

    int updateByPrimaryKey(Contact record);
}