package com.wsk.service;

import com.wsk.pojo.ShopInformation;

import java.util.List;

/**
 * Created by wsk1103 on 2017/5/12.
 */
public interface ShopInformationService {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopInformation record);

    int insertSelective(ShopInformation record);

    ShopInformation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopInformation record);

    int updateByPrimaryKey(ShopInformation record);

    List<ShopInformation> selectTen(Integer start);

    List<ShopInformation> selectOffShelf(Integer uid, Integer start);

    int getCountsOffShelf(Integer uid);

    int getCounts();
}
