package com.cheng.ecrm.mapper;

import com.cheng.ecrm.entity.User;
import com.cheng.ecrm.entity.YiSheng;

public interface YiShengMsgMapper {
	public String getNameFromCode(String code);
	
	public String getCodeByName(String name);
	
	public YiSheng yiShengLogin(User user);
}
