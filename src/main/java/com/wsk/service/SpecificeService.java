package com.wsk.service;

import com.wsk.pojo.Specific;

/**
 * Created by wsk1103 on 2017/5/13.
 */
public interface SpecificeService {
    int deleteByPrimaryKey(Integer id);

    int insert(Specific record);

    int insertSelective(Specific record);

    Specific selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Specific record);

    int updateByPrimaryKey(Specific record);

    Specific selectByCid(int cid);
}
