package com.estimating.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import sun.print.resources.serviceui;

import com.estimating.beans.SearchUseCasePointBean;
import com.estimating.beans.UseCasePointBean;
import com.estimating.dao.IUseCasePointDao;
import com.estimating.domain.UcpEstiamting;
import com.estimating.service.IUseCasePointService;
import com.estimating.utils.UseCasePointUtils;

@Service
public class UseCasePointServiceImpl implements IUseCasePointService {

	UseCasePointUtils ucPointUltils = new UseCasePointUtils();
	@Autowired
	IUseCasePointDao ucDao;

	
	@Override
	public double calTotalUseCasePoint(UseCasePointBean ucpBean) {
		return ucPointUltils.calTotalUCP(ucpBean);
	}
	
	@Override
	public boolean addUseCasePoint(UseCasePointBean ucBean) {
		return ucDao.addUseCasePoint(ucBean);
	}

	@Override
	public boolean updateUseCasePoint(UseCasePointBean ucBean) {
		return ucDao.updateUseCasePoint(ucBean);
	}

	@Override
	public double calCostUc(UseCasePointBean ucBean) {
		return ucPointUltils.calculateCostUc(ucBean);
	}

	@Override
	public List<UcpEstiamting> getAllListUc() {
		return ucDao.getAllListUc();
	}

	@Override
	public List<UcpEstiamting> findListUcpByUsername(String username) {
		return ucDao.findListUcpByUsername(username);
	}

	@Override
	public Set<Integer> listUcpIdToSearchVip(List<UcpEstiamting> listUcpEstiamting, SearchUseCasePointBean search) {
		// Get list UseCasePointBean from UcpEstiamting
		List<UseCasePointBean> listUseCasePointBean = ucPointUltils.parseUcpDaoToBean(listUcpEstiamting);
		Set<Integer> listId = new HashSet<Integer>();
		
		/**
		 * 	Calculate useCasePointBean
		 */
		Assert.notNull(listUseCasePointBean, "Can't find use case point");
		for (UseCasePointBean useCasePointBean : listUseCasePointBean) {
			/** Set Use Case Point Weight */
			useCasePointBean.setWuc(UseCasePointUtils.calculator_WUCs(useCasePointBean.getEasy(),
					useCasePointBean.getMedium(), useCasePointBean.getDifficult()));
			System.out.println("calculator_WUCs: " + UseCasePointUtils.calculator_WUCs(useCasePointBean.getEasy(),
					useCasePointBean.getMedium(), useCasePointBean.getDifficult()));
			/** Set Function Point Weight */
			useCasePointBean.setWas(UseCasePointUtils.calculator_WAs(useCasePointBean.getSimple(),
					useCasePointBean.getAverage(), useCasePointBean.getComplex()));
			
			/** Set Technical Complexity Factor  */
			useCasePointBean.setTcf(UseCasePointUtils.calculator_TCF(useCasePointBean));
			
			/** Set Invironment factors*/
			useCasePointBean.setEfc(UseCasePointUtils.calculator_ECF(useCasePointBean));
		}
		
		/**
		 * Compare
		 */
		// Set default max
		double max = 99999999999999.0;
		List<UseCasePointBean> result = new ArrayList<UseCasePointBean>();
		// Step 2
		for (UseCasePointBean uc : listUseCasePointBean) {
			
			
			
			if(search.getVip_ucp_to() == 0.0) search.setVip_ucp_to(max);
			if(search.getVip_ucp_total_hour_to() == 0.0) search.setVip_ucp_total_hour_to(max);
			if(search.getVip_ucp_coat_to() == 0.0) search.setVip_ucp_coat_to(max);
			if(search.getVip_ucpw_to() == 0.0) search.setVip_ucpw_to(max);
			if(search.getVip_fpw_to() == 0.0) search.setVip_fpw_to(max);
			if(search.getVip_tcf_to() == 0.0) search.setVip_tcf_to(max);
			if(search.getVip_ecf_to() == 0.0) search.setVip_ecf_to(max);
			
			if(search.getVip_ucp_from()<= uc.getTotalUCP() && uc.getTotalUCP() <= search.getVip_ucp_to()
					&&search.getVip_ucp_total_hour_from()<= UseCasePointUtils.calHour(uc) && UseCasePointUtils.calHour(uc) <= search.getVip_ucp_total_hour_to()
					&&search.getVip_ucp_coat_from()<= UseCasePointUtils.calCost(uc) && UseCasePointUtils.calCost(uc) <= search.getVip_ucp_coat_to()
					&&search.getVip_ucpw_from()<= uc.getWuc() && uc.getWuc() <= search.getVip_ucpw_to()
					&&search.getVip_fpw_from()<= uc.getWas() && uc.getWas() <= search.getVip_fpw_to()
					&&search.getVip_tcf_from()<= uc.getTcf() && uc.getTcf() <= search.getVip_tcf_to()
					&&search.getVip_ecf_from()<= uc.getEfc() && uc.getEfc() <= search.getVip_ecf_to()) {
				result.add(uc);
			}
		}
		
		// Step 3: Set project id for ucp bean from result;
		if(result !=null && result.size() > 0) {
			for (UseCasePointBean uc : result) {
				listId.add(uc.getProjectID());
			}
		}
		
		return listId;
	}

	@Override
	public Set<Integer> listUcpIdToSearch(List<UcpEstiamting> listUcpEstiamting,SearchUseCasePointBean searchBean) {

		List<UseCasePointBean> listUseCasePointBean = ucPointUltils.parseUcpDaoToBean(listUcpEstiamting);
		Set<Integer> listId = new HashSet<Integer>();
		
		/**
		 * 	Calculate useCasePointBean
		 */
		Assert.notNull(listUseCasePointBean, "Can't find use case point");
		for
		(UseCasePointBean useCasePointBean : listUseCasePointBean) {
			/** Set Use Case Point Weight */
			useCasePointBean.setWuc(UseCasePointUtils.calculator_WUCs(useCasePointBean.getEasy(),
					useCasePointBean.getMedium(), useCasePointBean.getDifficult()));
			/** Set Function Point Weight */
			useCasePointBean.setWas(UseCasePointUtils.calculator_WAs(useCasePointBean.getSimple(),
					useCasePointBean.getAverage(), useCasePointBean.getComplex()));
			
			/** Set Technical Complexity Factor  */
			useCasePointBean.setTcf(UseCasePointUtils.calculator_TCF(useCasePointBean));
			
			/** Set Invironment factors*/
			useCasePointBean.setEfc(UseCasePointUtils.calculator_ECF(useCasePointBean));
		}
		
		
		/**
		 * Compare
		 */
		// Set default max
		double max = 99999999999.0;
		List<UseCasePointBean> result = new ArrayList<UseCasePointBean>();
		//Step 2
		for (UseCasePointBean uc : listUseCasePointBean) {
			if(searchBean.getUcp_to() == 0.0) searchBean.setUcp_to(0);
			if(searchBean.getUcp_coat_to() == 0.0) searchBean.setUcp_coat_to(max);
			if(searchBean.getTotal_ucp_hour_to() == 0.0 ) searchBean.setTotal_ucp_hour_to(max);
			
			if(searchBean.getUcp_from() <= uc.getTotalUCP() && uc.getTotalUCP() <= searchBean.getUcp_to() &&
				searchBean.getUcp_coat_from() <= uc.getCost() && uc.getCost() <= searchBean.getUcp_coat_to() &&
				searchBean.getTotal_ucp_hour_from()<= uc.getHour() && uc.getHour() <= searchBean.getTotal_ucp_hour_to()){
				result.add(uc);
				
			}
			
		}
		// Step 3: Set project id for ucp bean from result;
		if(result !=null && result.size() > 0) {
			for (UseCasePointBean uc : result) {
				listId.add(uc.getProjectID());
			}
			
		}
		
		return listId;
	}
	
	


}
