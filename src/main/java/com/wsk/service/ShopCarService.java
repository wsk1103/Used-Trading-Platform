package com.wsk.service;

import com.wsk.pojo.ShopCar;

/**
 * Created by wsk1103 on 2017/5/13.
 */
public interface ShopCarService {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopCar record);

    int insertSelective(ShopCar record);

    ShopCar selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopCar record);

    int updateByPrimaryKey(ShopCar record);

    int getCounts(int uid);

//    List<ShopCar> selectByUid(int uid, int start);

    ShopCar selectByUid(int uid);
}
