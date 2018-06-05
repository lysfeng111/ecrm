package com.cheng.ecrm.mapper;

import com.cheng.ecrm.entity.DuanXin;

public interface DuanXinMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DuanXin record);

    int insertSelective(DuanXin record);

    DuanXin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DuanXin record);

    int updateByPrimaryKey(DuanXin record);
}