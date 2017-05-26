package com.wsk.dao;

import com.wsk.pojo.ShopInformation;
import org.apache.ibatis.annotations.Select;

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

    //通过分类选择
    @Select("select * from shopinformation where sort=#{sort} and display =1 limit 12")
    List<ShopInformation> selectBySort(int sort);

    //选择用户的发布
    @Select("select * from shopinformation where uid=#{uid} and display=1 order by id desc limit 12")
    List<ShopInformation> selectUserReleaseByUid(int uid);
}