package com.cheng.ecrm.service;

import java.util.List;
import java.util.Map;

import com.cheng.ecrm.entity.User;
import com.cheng.ecrm.entity.YiSheng;

public interface IUserService {
	public User getUserById(Integer userId);

	public User login(User user);

	public void zhuCe(User user);
	
	public Integer nameCheck(String userName);
	
	public List<User> getUserByMap(Map<String,Object> param);

	public void insertSelective(User user);
	
	public void updateByPrimaryKeySelective(User user);
	
	public Integer updateNameCheck(String userName,Integer id);
	
	public void delete(Integer id);
	
	public YiSheng yiShengLogin(User user);
}
