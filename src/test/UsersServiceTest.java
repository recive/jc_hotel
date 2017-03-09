package test;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jc_hotel.bean.Users;
import com.jc_hotel.service.UsersService;

public class UsersServiceTest {

	private static UsersService userservice;
	
	 @BeforeClass 
	 public static void init() { 
		 ApplicationContext context = new ClassPathXmlApplicationContext("/applicationContext-commom.xml"); 
		 userservice = (UsersService)context.getBean("usersService"); 
	 }
	
	@Test
	public void testAddUser(){
		Users user = new Users();
		user.setAccount("hello");
		user.setPassword("word");
		user.setEmail("recivejt");
		user.setQQ("2500228016");
		user.setTellPhone("18513582062");
		
		userservice.saveUser(user);
	}
	
}
