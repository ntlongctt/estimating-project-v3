package com.estimating.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.estimating.domain.FpEstimating;

public class FpEstimatingDaopImpl implements IFpEstimatingDao {
	@PersistenceContext
	EntityManager em;

	@Override
	public boolean addFpEstimating(FpEstimating fpEstimating) {
		boolean check = false;
		try {
			em.persist(fpEstimating);
			check = true;
		} catch (Exception e) {
			check = false;
		}
		return check;
	}

}
