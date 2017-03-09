package com.jc_hotel.service;

import java.util.Map;

import com.jc_hotel.bean.Users;

public interface UsersService {
	//
	public void saveUser(Users user);
	//
	public Users getUserByAccount(String account);
	
	//查询用户，用于登录验证
	public Users findUserByAccountAndPassword(Map<String,String> map);
	
	public Users getUserByUid(int uid);
	//
	public void updateUser(Users user);
}
