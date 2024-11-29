package org.jsp.daoImpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.jsp.dao.UserDao;
import org.jsp.entity.User;
import org.springframework.stereotype.Component;

@Component
public class UserDaoImpl implements UserDao {
	
	EntityManager em = Persistence.createEntityManagerFactory("dev").createEntityManager();
	EntityTransaction et = em.getTransaction();
	@Override
	public User saveUser(User user) {
		// TODO Auto-generated method stub
		
		et.begin();
		User u = em.merge(user);
		et.commit();
		
		return u;
	}
	@Override
	public List<User> viewAllUsers() {
		// TODO Auto-generated method stub
		return em.createQuery("from User").getResultList();
	}
	@Override
	public User selectUserById(Integer userId) {
		// TODO Auto-generated method stub
		return em.find(User.class, userId);
	}
	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		et.begin();
		em.remove(user);
		et.commit();
	}
	@Override
	public void updateUser(Integer id, String name, String email, String password, Long phone, Integer age) {
		// TODO Auto-generated method stub
		et.begin();
		User user = selectUserById(id);
		if (user != null) {
			user.setName(name);
			user.setEmail(email);
			user.setPassword(password);
			user.setPhone(phone);
			user.setAge(age);
			em.merge(user);
		}
		et.commit();
	}
	@Override
	public User loginUser(String email, String password) {
		
		String hql = "FROM User u WHERE u.email =:email AND u.password =:password";
        Query query = em.createQuery(hql, User.class);
        query.setParameter("email", email);
        query.setParameter("password", password);
        
        List<User> users = query.getResultList();
        
        if (users.isEmpty()) {
			return null;
		}
        
        return users.get(0);
	}

}
