package org.jsp;

import org.jsp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	@RequestMapping("/reg")
	public ModelAndView saveUser(@RequestParam String name,
			@RequestParam String email,
			@RequestParam String password,
			@RequestParam Long phone,
			@RequestParam Integer age
			)
	{
		return userService.saveUser(name, email, password, phone, age);
	}
	
	@RequestMapping("/view")
	public ModelAndView viewAllUsers()
	{
		return userService.viewAllUsers();
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteUserById(@RequestParam Integer userId)
	{
		return userService.deleteUserById(userId);
	}
	
	@RequestMapping("/search")
	public ModelAndView searchUserById(@RequestParam Integer userId)
	{
		return userService.searchUserById(userId);
	}
	
	@RequestMapping("/searchUpdate")
	public ModelAndView searchUserByIdUpdate(@RequestParam Integer userId)
	{
		return userService.searchUserByIdUpdate(userId);
	}
	
	@RequestMapping("/update")
	public ModelAndView updateUser(@RequestParam Integer id,
			@RequestParam String name,
			@RequestParam String email,
			@RequestParam String password,
			@RequestParam Long phone,
			@RequestParam Integer age
			)
	{
		return userService.updateUser(id,name,email,password,phone,age);
	}
	
	@RequestMapping("/login")
	public ModelAndView loginUser(@RequestParam String email,
			@RequestParam String password
			)
	{
		return userService.loginUser(email, password);
	}
}
