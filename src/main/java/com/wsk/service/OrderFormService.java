package com.wsk.service;

import com.wsk.pojo.OrderForm;

import java.util.List;

/**
 * Created by wsk1103 on 2017/5/13.
 */
public interface OrderFormService {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderForm record);

    int insertSelective(OrderForm record);

    OrderForm selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderForm record);

    int updateByPrimaryKey(OrderForm record);

    int getCounts(int uid);

    List<OrderForm> selectByUid(int uid, int start);
}
