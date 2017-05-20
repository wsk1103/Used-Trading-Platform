package com.wsk.dao;

import com.wsk.pojo.ShopInformation;

import java.util.List;
import java.util.Map;

public interface ShopInformationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopInformation record);

    int insertSelective(ShopInformation record);

    ShopInformation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopInformation record);

    int updateByPrimaryKey(ShopInformation record);

    List<ShopInformation> selectTen(Map map);

    List<ShopInformation> selectOffShelf(Integer uid, Integer start);

    int getCountsOffShelf(Integer uid);

    int getCounts();

    int selectIdByImage(String image);

    List<ShopInformation> selectByName(String name);
}