package com.wsk.dao;

import com.wsk.pojo.ShopInformation;

import java.util.List;

public interface ShopInformationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopInformation record);

    int insertSelective(ShopInformation record);

    ShopInformation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopInformation record);

    int updateByPrimaryKey(ShopInformation record);

    List<ShopInformation> selectTen(int start);

    List<ShopInformation> selectOffShelf(int uid, int start);

    int getCountsOffShelf(int uid);
}