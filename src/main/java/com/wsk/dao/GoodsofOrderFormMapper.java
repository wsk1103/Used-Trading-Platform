package com.wsk.dao;

import com.wsk.pojo.GoodsofOrderForm;

import java.util.List;

public interface GoodsofOrderFormMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GoodsofOrderForm record);

    int insertSelective(GoodsofOrderForm record);

    GoodsofOrderForm selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GoodsofOrderForm record);

    int updateByPrimaryKey(GoodsofOrderForm record);

    List<GoodsofOrderForm> selectByOFid(int ofid);
}