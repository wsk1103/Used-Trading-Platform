package com.wsk.service.Impl;

import com.wsk.dao.ShopInformationMapper;
import com.wsk.pojo.ShopInformation;
import com.wsk.service.ShopInformationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

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
        return shopInformationMapper.insert(record);
    }

    @Override
    public int insertSelective(ShopInformation record) {
        return shopInformationMapper.insertSelective(record);
    }

    @Override
    public ShopInformation selectByPrimaryKey(Integer id) {
        return shopInformationMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(ShopInformation record) {
        return shopInformationMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(ShopInformation record) {
        return shopInformationMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<ShopInformation> selectTen(Map map) {
        return shopInformationMapper.selectTen(map);
    }

    @Override
    public List<ShopInformation> selectOffShelf(int uid, int start) {
        return shopInformationMapper.selectOffShelf(uid,start);
    }

    @Override
    public int getCountsOffShelf(int uid) {
        return shopInformationMapper.getCountsOffShelf(uid);
    }

    @Override
    public int getCounts() {
        return shopInformationMapper.getCounts();
    }

    @Override
    public int selectIdByImage(String image) {
        return shopInformationMapper.selectIdByImage(image);
    }

    @Override
    public List<ShopInformation> selectByName(String name){
        return shopInformationMapper.selectByName(name);
    }

    @Override
    public List<ShopInformation> selectBySort(int sort) {
        return shopInformationMapper.selectBySort(sort);
    }

    @Override
    public List<ShopInformation> selectUserReleaseByUid(int uid) {
        return shopInformationMapper.selectUserReleaseByUid(uid);
    }
}
