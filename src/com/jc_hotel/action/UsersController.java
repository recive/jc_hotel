package com.jc_hotel.action;

import java.util.HashMap;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.jc_hotel.bean.Users;
import com.jc_hotel.service.UsersService;

@Controller
@RequestMapping("user")
public class UsersController {
	
	
	@Autowired
	private UsersService usersService;
	
	@RequestMapping("/addUser")
	public String saveUser(Users user){
		System.out.print(user);
		usersService.saveUser(user);
		return "/jsp/registSuccess.jsp";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) throws Exception{
		
		HttpSession session = request.getSession();
		
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		Map<String,String> map = new HashMap<String,String>();
		
		map.put("account", account);
		map.put("password", password);
		
		if(account != null && account.length() > 0){
			Users user = usersService.findUserByAccountAndPassword(map);
			//Users user = usersService.getUserByAccount(account);
			if(null != user){
				session.setAttribute("user", user);
				return "/index.jsp";
			}
		}
		return "/jsp/login.jsp";
	}
	@RequestMapping("getUser")
	public String getUser(HttpServletRequest request,Map<String,Users> model){
		String id = request.getParameter("uid");
		int uid = Integer.parseInt(id);
		Users user = usersService.getUserByUid(uid);
		model.put("user", user);
		return "/jsp/persondetail.jsp";
	}
	
}
