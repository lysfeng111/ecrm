package com.cheng.ecrm.mapper;

import com.cheng.ecrm.entity.SuiFang;

public interface SuiFangMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SuiFang record);

    int insertSelective(SuiFang record);

    SuiFang selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SuiFang record);

    int updateByPrimaryKey(SuiFang record);
}