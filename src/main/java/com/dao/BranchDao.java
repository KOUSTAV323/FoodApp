package com.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.dto.Branch;
import com.dto.User;

public class BranchDao 
{
	EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
	EntityManager em=emf.createEntityManager();
    EntityTransaction et=em.getTransaction();
    
    public Branch createBranch(Branch b) {
    	et.begin();
    	Branch b1=em.merge(b);
    	et.commit();
    	return b1;
    }

	public Branch findBranchById(int id) 
	{
		
		return em.find(Branch.class, id);
	}

	public void deleteBranch(Branch branch) {
		
		et.begin();
		em.remove(branch);
		et.commit();
		
	}

}
