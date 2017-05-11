package com.wsk.dao;

import com.wsk.pojo.ShopContext;

import java.util.List;

public interface ShopContextMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopContext record);

    int insertSelective(ShopContext record);

    ShopContext selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopContext record);

    int updateByPrimaryKey(ShopContext record);

    int getCounts(int sid);

    List<ShopContext> selectBySid(int sid, int start);
}