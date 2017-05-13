package com.wsk.service;

import com.wsk.pojo.WantContext;

import java.util.List;

/**
 * Created by wsk1103 on 2017/5/13.
 */
public interface WantContextService {
    int deleteByPrimaryKey(Integer id);

    int insert(WantContext record);

    int insertSelective(WantContext record);

    WantContext selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WantContext record);

    int updateByPrimaryKey(WantContext record);

    List<WantContext> selectByUWid(int uwid, int start);

    int getCounts(int uwid);
}
