package com.wsk.dao;

import com.wsk.pojo.Specific;

public interface SpecificMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Specific record);

    int insertSelective(Specific record);

    Specific selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Specific record);

    int updateByPrimaryKey(Specific record);

    Specific selectByCid(int cid);
}