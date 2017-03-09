package com.jc_hotel.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jc_hotel.bean.Users;
import com.jc_hotel.dao.UsersDao;
import com.jc_hotel.service.UsersService;
import com.jc_hotel.util.MD5;

@Repository
@Transactional(rollbackFor=Exception.class)
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersDao usersDao;
	
	@Override
	public void saveUser(Users user) {
		// TODO Auto-generated method stub
		//MD5处理密码
		try {
			String password = MD5.generateCode(user.getPassword());
			user.setPassword(password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		usersDao.saveUser(user);
	}

	//得到用户
	@Override
	public Users getUserByAccount(String account) {
		// TODO Auto-generated method stub
		return usersDao.findUserByAccount(account);
	}

	@Override
	public void updateUser(Users user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Users getUserByUid(int uid) {
		// TODO Auto-generated method stub
		return usersDao.findUserByUid(uid);
	}

	@Override
	public Users findUserByAccountAndPassword(Map<String,String> map) {
		// TODO Auto-generated method stub
		//MD5处理密码
		try {
			map.put("password", MD5.generateCode(map.get("password")));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return usersDao.findUserByAccountAndPassword(map);
	}

}
