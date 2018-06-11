package com.nas.ssm.user.handlers;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nas.ssm.commons.beans.User;
import com.nas.ssm.commons.vo.Page;
import com.nas.ssm.user.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserHandler {
	
	@Autowired
	private IUserService service ;
	
	@RequestMapping("/add.do")
	public String addUserHandler(User user) {
		
		service.addUser(user) ;
		
		return "/add_User.jsp" ;
	}
	
	@RequestMapping("/search.do")
	public String searchUserHandler(int pageno,Model model) {
		
		Page<User> page = service.findAllUser(pageno) ;
		
		//System.out.println(page);
		model.addAttribute("user",page) ;
		
		return "/user_List.jsp" ;
	}
	
	@RequestMapping("/delete.do")
	public String deleteUserHandler(int id) {
		
		service.deleteUser(id) ;
		
		return "search.do?pageno=1" ;
	}
	
	
}
