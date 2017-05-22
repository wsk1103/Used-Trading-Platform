package com.wsk.service;

import com.wsk.pojo.ShopContext;

import java.util.List;

/**
 * Created by wsk1103 on 2017/5/13.
 */
public interface ShopContextService {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopContext record);

    int insertSelective(ShopContext record);

    ShopContext selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopContext record);

    int updateByPrimaryKey(ShopContext record);

    int getCounts(int sid);

    List<ShopContext> findById(int sid, int start);

    List<ShopContext> selectById(int id);
}
