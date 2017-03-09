package com.jc_hotel.dao.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jc_hotel.bean.Users;
import com.jc_hotel.dao.UsersDao;
import com.jc_hotel.mapper.UsersMapper;

@Repository
@Transactional(rollbackFor=Exception.class)
public class UsersDaoImpl implements UsersDao{

	@Autowired
	private UsersMapper usersMapper;
	
	@Override
	public void saveUser(Users user) {
		// TODO Auto-generated method stub
		usersMapper.saveUser(user);
	}

	@Override
	public void updateUser(Users user) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Users findUserByAccount(String account) {
		// TODO Auto-generated method stub
		return usersMapper.findUserByAccount(account);
	}

	@Override
	public Users findUserByUid(int uid) {
		// TODO Auto-generated method stub
		return usersMapper.findUserByUid(uid);
	}

	@Override
	public Users findUserByAccountAndPassword(Map<String,String> map) {
		// TODO Auto-generated method stub
		Users user = usersMapper.findUserByAccountAndPassword(map);
		return user;
	}

}
