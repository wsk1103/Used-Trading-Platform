package com.wsk.dao;

import com.wsk.pojo.UserRelease;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserReleaseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserRelease record);

    int insertSelective(UserRelease record);

    UserRelease selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserRelease record);

    int updateByPrimaryKey(UserRelease record);

    int getCounts(int uid);

    List<UserRelease> selectByUid(int uid, int start);

    @Select("select * from userrelease where uid=#{uid} and display=1 order by id desc limit 12")
    List<UserRelease> selectUserProductByUid(int uid);
}