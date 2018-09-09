package com.wsk.dao;

import com.wsk.pojo.ShopContext;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ShopContextMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopContext record);

    int insertSelective(ShopContext record);

    ShopContext selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopContext record);

    int updateByPrimaryKey(ShopContext record);

    int getCounts(int sid);

    List<ShopContext> findById(int sid, int start);

    @Select("select * from shopcontext where sid=#{id,jdbcType=INTEGER} and display=1")
    List<ShopContext> selectBySid(int id);
}