package com.cheng.ecrm.mapper;

import java.util.List;
import java.util.Map;

import com.cheng.ecrm.entity.User;
import com.cheng.ecrm.entity.YiSheng;

public interface UserLoginMapper {
	public User login(User user);
	public Integer nameCheck(String userName);
	
	public List<User> getUserByMap(Map<String,Object> param);
	
	public Integer updateNameCheck(Map<String,Object> param);
	
}
