package com.wsk.dao;

import com.wsk.pojo.ShopCar;

import java.util.List;

public interface ShopCarMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopCar record);

    int insertSelective(ShopCar record);

    ShopCar selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopCar record);

    int updateByPrimaryKey(ShopCar record);

    int getCounts(int uid);

    List<ShopCar> selectByUid(int uid, int start);
}