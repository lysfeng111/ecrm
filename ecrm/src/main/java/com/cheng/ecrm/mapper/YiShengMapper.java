package com.cheng.ecrm.mapper;

import com.cheng.ecrm.entity.YiSheng;

public interface YiShengMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(YiSheng record);

    int insertSelective(YiSheng record);

    YiSheng selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(YiSheng record);

    int updateByPrimaryKey(YiSheng record);
}