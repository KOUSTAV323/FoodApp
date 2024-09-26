package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.dto.User;

public class UserDao 
{
	
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
		EntityManager em=emf.createEntityManager();
	    EntityTransaction et=em.getTransaction();
		
	public void saveUser(User user)
	{
		et.begin();
		em.persist(user);
		et.commit();
	}
	
	public User findByEmail(String email)
	{
		// write custom query
		
		Query q=em.createQuery("select u from User u where email=?1");
		q.setParameter(1,email);
		
		List<User>list=q.getResultList();
		if(!list.isEmpty())
		
			return list.get(0);
		
		return null;
	}

	public User findUserById(int adminId)
	{
		
		return em.find(User.class, adminId);
	}

}
