package com.wsk.service.Impl;

import com.wsk.dao.UserPasswordMapper;
import com.wsk.pojo.UserPassword;
import com.wsk.service.UserPasswordService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Maibenben on 2017/4/27.
 */
@Service("userPasswordService")
public class UserPasswordServiceImpl implements UserPasswordService{
    @Resource
    UserPasswordMapper userPasswordMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(UserPassword record) {
        return 0;
    }

    @Override
    public int insertSelective(UserPassword record) {
        return 0;
    }

    @Override
    public UserPassword selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(UserPassword record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(UserPassword record) {
        return 0;
    }

    @Override
    public UserPassword selectByUid(Integer uid) {
        return this.userPasswordMapper.selectByUid(uid);
    }
}
