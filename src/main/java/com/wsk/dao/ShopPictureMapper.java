package com.wsk.dao;

import com.wsk.pojo.ShopPicture;

import java.util.List;

public interface ShopPictureMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopPicture record);

    int insertSelective(ShopPicture record);

    ShopPicture selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopPicture record);

    int updateByPrimaryKey(ShopPicture record);

    List<ShopPicture> selectBySidOnlyOne(int sid);

    List<ShopPicture> selectBySid(int sid);
}