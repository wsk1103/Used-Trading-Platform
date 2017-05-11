package com.wsk.dao;

import com.wsk.pojo.UserRelease;
import com.wsk.pojo.UserWant;

import java.util.List;

public interface UserWantMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserWant record);

    int insertSelective(UserWant record);

    UserWant selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserWant record);

    int updateByPrimaryKey(UserWant record);

    int getCounts(int uid);

    List<UserRelease> selectByUid(int uid, int start);
}