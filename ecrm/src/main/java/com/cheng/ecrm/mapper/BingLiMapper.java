package com.cheng.ecrm.mapper;

import com.cheng.ecrm.entity.BingLi;

public interface BingLiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BingLi record);

    int insertSelective(BingLi record);

    BingLi selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BingLi record);

    int updateByPrimaryKey(BingLi record);
}