package com.wsk.service.Impl;

import com.wsk.dao.ShopCarMapper;
import com.wsk.pojo.ShopCar;
import com.wsk.service.ShopCarService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by wsk1103 on 2017/5/13.
 */
@Service
public class ShopCarServiceImpl implements ShopCarService {
    @Resource
    private ShopCarMapper shopCarMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(ShopCar record) {
        return shopCarMapper.insert(record);
    }

    @Override
    public int insertSelective(ShopCar record) {
        return shopCarMapper.insertSelective(record);
    }

    @Override
    public ShopCar selectByPrimaryKey(Integer id) {
        return shopCarMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(ShopCar record) {
        return shopCarMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(ShopCar record) {
        return shopCarMapper.updateByPrimaryKey(record);
    }

    @Override
    public int getCounts(int uid) {
        return shopCarMapper.getCounts(uid);
    }

//    @Override
//    public List<ShopCar> selectByUid(int uid, int start) {
//        return shopCarMapper.selectByUid(uid, start);
//    }

    @Override
    public ShopCar selectByUid(int uid) {
        return shopCarMapper.selectByUid(uid);
    }
}
