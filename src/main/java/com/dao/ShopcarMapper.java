package com.dao;

import com.bean.Shopcar;

public interface ShopcarMapper {
    int deleteByPrimaryKey(Integer srId);

    int insert(Shopcar record);

    int insertSelective(Shopcar record);

    Shopcar selectByPrimaryKey(Integer srId);

    int updateByPrimaryKeySelective(Shopcar record);

    int updateByPrimaryKey(Shopcar record);
}