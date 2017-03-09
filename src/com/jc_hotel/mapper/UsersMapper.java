package com.jc_hotel.mapper;

import java.util.Map;

import com.jc_hotel.bean.Users;

public interface UsersMapper {
	//淇濆瓨鐢ㄦ埛
	public void saveUser(Users user);
	
	//鏌ヨ鐢ㄦ埛锛岀敤浜庣櫥褰曢獙璇�
	public Users findUserByAccount(String account);
	
	//查询用户，用于登录验证
	public Users findUserByAccountAndPassword(Map<String,String> map);
	
	public Users findUserByUid(int uid); 
	//鏇存柊鐢ㄦ埛
	public void updateUser(Users user);
}
