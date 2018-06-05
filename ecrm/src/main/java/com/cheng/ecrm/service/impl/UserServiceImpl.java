package com.cheng.ecrm.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cheng.ecrm.entity.User;
import com.cheng.ecrm.entity.YiSheng;
import com.cheng.ecrm.mapper.UserLoginMapper;
import com.cheng.ecrm.mapper.UserMapper;
import com.cheng.ecrm.mapper.YiShengMsgMapper;
import com.cheng.ecrm.service.IUserService;
@Service("userService")
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserLoginMapper userLoginMapper;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private YiShengMsgMapper yiShengMsgMapper;
	
	@Override
	public User getUserById(Integer userId) {
		
		return userMapper.selectByPrimaryKey(userId);
	}

	@Override
	public User login(User user) {
		
		return userLoginMapper.login(user);
	}

	@Override
	public void zhuCe(User user) {
		userMapper.insertSelective(user);

	}

	@Override
	public Integer nameCheck(String userName) {
		
		return userLoginMapper.nameCheck(userName);
	}

	@Override
	public List<User> getUserByMap(Map<String, Object> param) {
		
		return userLoginMapper.getUserByMap(param);
	}

	@Override
	public void insertSelective(User user){
		userMapper.insertSelective(user);
	}

	@Override
	public void updateByPrimaryKeySelective(User user) {
		userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public Integer updateNameCheck(String userName, Integer id) {
		Map<String,Object> param = new HashMap<>();
		param.put("userName", userName);
		param.put("id",id);
		return userLoginMapper.updateNameCheck(param);
	}

	@Override
	public void delete(Integer id) {
		userMapper.deleteByPrimaryKey(id);
	}

	@Override
	public YiSheng yiShengLogin(User user) {
		
		return yiShengMsgMapper.yiShengLogin(user);
	}
}
