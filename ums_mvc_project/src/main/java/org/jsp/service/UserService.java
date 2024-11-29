package org.jsp.service;

import org.springframework.web.servlet.ModelAndView;

public interface UserService {

	public ModelAndView saveUser(String name, String email, String password, Long phone, Integer age);
	
	public ModelAndView viewAllUsers();
	
	public ModelAndView deleteUserById(Integer userId);
	
	public ModelAndView searchUserById(Integer userId);
	
	public ModelAndView searchUserByIdUpdate(Integer userId);
	
	public ModelAndView updateUser(Integer id, String name, String email, String password, Long phone, Integer age);

	public ModelAndView loginUser(String email, String password);
}
