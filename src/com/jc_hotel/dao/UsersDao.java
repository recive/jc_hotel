package com.jc_hotel.dao;

import java.util.Map;

import com.jc_hotel.bean.Users;

public interface UsersDao {
	//保存用户
	public void saveUser(Users user);
	
	//查询用户,用于登录验证
	public Users findUserByAccount(String account); 
	
	//��ѯ�û������ڵ�¼��֤
	public Users findUserByAccountAndPassword(Map<String,String> map);
	
	public Users findUserByUid(int uid);
	
	//更新用户
	public void updateUser(Users user);
}
