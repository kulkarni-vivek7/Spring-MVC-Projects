package org.jsp.serviceImpl;

import java.util.List;

import org.jsp.dao.UserDao;
import org.jsp.entity.User;
import org.jsp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public ModelAndView saveUser(String name, String email, String password, Long phone, Integer age) {
		// TODO Auto-generated method stub

		User u = new User();
		u.setName(name);
		u.setEmail(email);
		u.setPassword(password);
		u.setPhone(phone);
		u.setAge(age);
		
		User user = userDao.saveUser(u);

		ModelAndView mv = new ModelAndView("login.jsp");
		mv.addObject("success", true);
		mv.addObject("failed", false);
		mv.addObject("msg", "Dear "+user.getName()+", Your Registration is Successful with Id "+user.getId());

		return mv;
	}

	@Override
	public ModelAndView viewAllUsers() {
		// TODO Auto-generated method stub
		List<User> u = userDao.viewAllUsers();

		ModelAndView mv = new ModelAndView("view.jsp");
		mv.addObject("users", u);

		return mv;
	}

	@Override
	public ModelAndView deleteUserById(Integer userId) {
		// TODO Auto-generated method stub
		
		User user = userDao.selectUserById(userId);
		
		ModelAndView mv = new ModelAndView("delete.jsp");
		
		if (user != null) {
			userDao.deleteUser(user);
			
			mv.addObject("msg", "User Deleted Successfully");
			
			return mv;
		} 
		else {
			mv.addObject("msg", "Invalid User Id... Unable to Delete User");
			
			return mv;
		}
	}

	@Override
	public ModelAndView searchUserById(Integer userId) {
		// TODO Auto-generated method stub
		
		User user = userDao.selectUserById(userId);
		
		ModelAndView mv = new ModelAndView("select.jsp");
		if (user != null) {
	        mv.addObject("user", user);
	    } 
		else {
	        mv.addObject("user", null);
	    }
		
		return mv;	
	}
	
	@Override
	public ModelAndView searchUserByIdUpdate(Integer userId) {
		// TODO Auto-generated method stub
		
		User user = userDao.selectUserById(userId);
		
		ModelAndView mv = new ModelAndView("update.jsp");
		if (user != null) {
			mv.addObject("user", user);
		} 
		else {
			mv.addObject("msg", "Invalid User Id... User not found");
		}
		
		return mv;	
	}

	@Override
	public ModelAndView updateUser(Integer id, String name, String email, String password, Long phone, Integer age) {
		// TODO Auto-generated method stub
		
		userDao.updateUser(id,name,email, password, phone, age);
		
		ModelAndView mv = new ModelAndView("update.jsp");
		mv.addObject("msg", "User updated successfully");
		
		return mv;
	}

	@Override
	public ModelAndView loginUser(String email, String password) {
		// TODO Auto-generated method stub
		
		User user = userDao.loginUser(email,password);
		
		if (user != null) {
			ModelAndView mv = new ModelAndView("home.jsp");
			
			return mv;
		}
		else {
			ModelAndView mv = new ModelAndView("login.jsp");
			mv.addObject("success", false);
			mv.addObject("failed", true);
			mv.addObject("msg", "Invalid Credentials...");
			return mv;
		}
		
	}

}
