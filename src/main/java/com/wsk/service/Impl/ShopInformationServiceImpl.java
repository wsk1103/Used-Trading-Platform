package com.wsk.service.Impl;

import com.wsk.dao.ShopInformationMapper;
import com.wsk.pojo.ShopInformation;
import com.wsk.service.ShopInformationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wsk1103 on 2017/5/12.
 */
@Service
public class ShopInformationServiceImpl implements ShopInformationService{

    @Resource
    private ShopInformationMapper shopInformationMapper;
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(ShopInformation record) {
        return 0;
    }

    @Override
    public int insertSelective(ShopInformation record) {
        return 0;
    }

    @Override
    public ShopInformation selectByPrimaryKey(Integer id) {
        return shopInformationMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(ShopInformation record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(ShopInformation record) {
        return 0;
    }

    @Override
    public List<ShopInformation> selectTen(Integer start) {
        return shopInformationMapper.selectTen(start);
    }

    @Override
    public List<ShopInformation> selectOffShelf(Integer uid, Integer start) {
        return null;
    }

    @Override
    public int getCountsOffShelf(Integer uid) {
        return 0;
    }

    @Override
    public int getCounts() {
        return shopInformationMapper.getCounts();
    }
}
