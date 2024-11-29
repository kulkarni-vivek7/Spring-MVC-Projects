package org.jsp.dao;

import java.util.List;

import org.jsp.entity.User;
import org.springframework.stereotype.Component;

@Component
public interface UserDao {

	User saveUser(User user);

	List<User> viewAllUsers();

	User selectUserById(Integer userId);

	void deleteUser(User user);

	void updateUser(Integer id, String name, String email, String password, Long phone, Integer age);

	User loginUser(String email, String password);

}
