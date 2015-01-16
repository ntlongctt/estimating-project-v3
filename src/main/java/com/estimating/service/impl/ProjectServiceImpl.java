package com.estimating.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.estimating.beans.FuntionPointBean;
import com.estimating.beans.ProjectBean;
import com.estimating.beans.ShareProjectBean;
import com.estimating.beans.UseCasePointBean;
import com.estimating.dao.IFpEstimatingDao;
import com.estimating.dao.IProjectDao;
import com.estimating.dao.IUseCasePointDao;
import com.estimating.domain.FpEstimating;
import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;
import com.estimating.domain.ShareProject;
import com.estimating.domain.UcpEstiamting;
import com.estimating.service.IProjectService;
import com.estimating.utils.ParseStringToArrayUtils;

@Service
public class ProjectServiceImpl implements IProjectService {

	@Autowired
	IProjectDao projectDao;
 
	@Autowired
	IFpEstimatingDao fpDao;
	
	@Autowired
	IUseCasePointDao ucpDao;
	
	/*@Autowired
	IUseCasePointDao ucDao;*/

	@Override
	public List<Project> getListProject(String username) {
		return projectDao.getListProject(username);
	}
	
	@Override
	public List<Project> getListProjectNotEstimated(String username) {
		return projectDao.getListProjectNotEstimated(username);
	}
	
	@Override
	public boolean addProject(Project project) {
		System.out.println("Service: " + project.getMoTa());
		return projectDao.addProject(project);
	}
	

	@Override
	public List<ProjectType> getListProjectType() {
		return projectDao.getListProjectType();
	}

	@Override
	public Project findProjectById(int id) {
		return projectDao.findProjectById(id);
	}

	@Override
	public boolean checkExistFpEstimating(int projectID) {
		return projectDao.checkExistFpEstimating(projectID);
	}

	@Override
	public boolean updateExistFpEstimating(int projectID) {
		return projectDao.updateExistFpEstimating(projectID);
	}

	@Override
	public List<Project> getListProjectUCEstimated(String username) {
		return projectDao.getListProjectUCEstimated(username);
	}

	@Override
	public boolean checkExistUcEstimating(int projectID) {
		return projectDao.checkExistUcEstimating(projectID);
	}

	@Override
	public boolean uodateExistUcEstimating(int projectID) {
		return projectDao.updateExistUcEstimating(projectID);
	}
	

	@Override
	public List<Project> getListProjectByUserName(String username) {
		return projectDao.getListProjectByUserName(username);
	}

	@Override
	public Map<String, Object> getListFpVsUcp(int projectID) {
		Map<String, Object> maps = new HashMap<String, Object>();
		
		List<FpEstimating> lstFp = fpDao.getListFpEstimated(projectID);
		System.out.println("Size: " + lstFp.size());
		List<FuntionPointBean> lstFpBean =  new ArrayList<FuntionPointBean>();
		FuntionPointBean fpBean;
		for (FpEstimating fp: lstFp) {
			// Set User_Input
			fpBean = new FuntionPointBean();
			List<Double> ui = ParseStringToArrayUtils.parseToArray(fp.getUser_Input());
			fpBean.setUiSimple(ui.get(0));
			fpBean.setUiAverage(ui.get(1));
			fpBean.setUiComplex(ui.get(2));
			//Set User output
			List<Double> uo = ParseStringToArrayUtils.parseToArray(fp.getUser_Output());
			fpBean.setUoSimple(uo.get(0));
			fpBean.setUoAverage(uo.get(1));
			fpBean.setUoComplex(uo.get(2));
			//set User Online queries
			List<Double> uq = ParseStringToArrayUtils.parseToArray(fp.getUser_Online_Query());
			fpBean.setUqSimple(uq.get(0));
			fpBean.setUqAverage(uq.get(1));
			fpBean.setUqComplex(uq.get(2));
			//Set Logical file
			List<Double> ilf = ParseStringToArrayUtils.parseToArray(fp.getLogical_File());
			fpBean.setIlfSimple(ilf.get(0));
			fpBean.setIlfAverage(ilf.get(1));
			fpBean.setIlfComplex(ilf.get(2));
			//Set External Interface
			List<Double> eif = ParseStringToArrayUtils.parseToArray(fp.getExternal_Interface());
			fpBean.setEifSimple(eif.get(0));
			fpBean.setEifAverage(eif.get(1));
			fpBean.setEifComplex(eif.get(2));
			//Set RACF
			List<Double> rf = ParseStringToArrayUtils.parseToArray(fp.getRelative_Factor());
			fpBean.setrF1(rf.get(0));
			fpBean.setrF2(rf.get(1));
			fpBean.setrF3(rf.get(2));
			fpBean.setrF4(rf.get(3));
			fpBean.setrF5(rf.get(4));
			fpBean.setrF6(rf.get(5));
			fpBean.setrF7(rf.get(6));
			fpBean.setrF8(rf.get(7));
			fpBean.setrF9(rf.get(8));
			fpBean.setrF10(rf.get(9));
			fpBean.setrF11(rf.get(10));
			fpBean.setrF12(rf.get(11));
			fpBean.setrF13(rf.get(12));
			fpBean.setrF14(rf.get(13));
			// Set total
			fpBean.setTotalFP(fp.getTotal());
			// Set name = ProjectName + version + create date
			fpBean.setTenProject(fp.getProject().getTenProject() + "-- v" + fp.getVersion() + " - " + fp.getNgay());
			fpBean.setFpID(fp.getMaFP_Es());
			lstFpBean.add(fpBean);
		}
		maps.put("listFp", lstFpBean);
		
		
		
		List<UcpEstiamting> lstUcp = ucpDao.getListUcpEstimated(projectID);
		List<UseCasePointBean> lstBean = new ArrayList<UseCasePointBean>();
		UseCasePointBean ucpBean;
		for (UcpEstiamting uc : lstUcp) {
			// Set Was_weight
			ucpBean = new UseCasePointBean();
			List<Double> was = ParseStringToArrayUtils.parseToArray(uc.getActor());
			ucpBean.setEasy(was.get(0));
			ucpBean.setMedium(was.get(1));
			ucpBean.setDifficult(was.get(2));
			// Set WUC weight
			List<Double> wuc = ParseStringToArrayUtils.parseToArray(uc.getUseCase());
			ucpBean.setSimple(wuc.get(0));
			ucpBean.setAverage(wuc.get(1));
			ucpBean.setComplex(wuc.get(2));
			// Set Technical
			List<Double> tcf = ParseStringToArrayUtils.parseToArray(uc.getTechnical_Factor());
			ucpBean.setDistributed(tcf.get(0));
			ucpBean.setPerformance(tcf.get(1));
			ucpBean.setEaseofChange(tcf.get(2));
			ucpBean.setComplex(tcf.get(3));
			ucpBean.setReusableCode(tcf.get(4));
			ucpBean.setEaseofInstallation(tcf.get(5));
			ucpBean.setEaseofUse(tcf.get(6));
			ucpBean.setPortable(tcf.get(7));
			ucpBean.setEaseofChange(tcf.get(8));
			ucpBean.setConcurrentUse(tcf.get(9));
			ucpBean.setSpecialSecurity(tcf.get(10));
			ucpBean.setAccessforThirdParties(tcf.get(11));
			ucpBean.setTrainingNeeds(tcf.get(12));
			// Set Environment
			List<Double> efc = ParseStringToArrayUtils.parseToArray(uc.getEnviriment_Factor());
			ucpBean.setFamiliarwithDevelopmentProcess(efc.get(0));
			ucpBean.setApplicationExperience(efc.get(1));
			ucpBean.setObjectOrientedExperience(efc.get(2));
			ucpBean.setLeadAnalystCapability(efc.get(3));
			ucpBean.setMotivation(efc.get(4));
			ucpBean.setStableRequirements(efc.get(5));
			ucpBean.setParttimeStaff(6);
			ucpBean.setDifficulProgrammingLanguage(efc.get(7));
			//Set total
			ucpBean.setTotalUCP(uc.getTotal());
			//Set Name =  ProjectName + version + create date= 
			ucpBean.setTenProject(uc.getProject().getTenProject() + "v" + uc.getVersion() + "-" + uc.getNgay() );
			ucpBean.setUcpId(uc.getMaUCP_Es());
			lstBean.add(ucpBean);
			
		}
		maps.put("listUc", lstBean);
		
		
		
		return maps;
	}

	@Override
	public List<Project> getListProjectFPEstiamted(String username) {
		return projectDao.getListProjectFPEstiamted(username);
	}

	@Override
	public ProjectType findProjectTypeById(int typeID) {
		return projectDao.findProjectTypeById(typeID);
	}

	@Override
	public List<ProjectBean> findListProjectBySearchUcpVip(String username, Set<Integer> listId) {
		List<Project> projects =  new ArrayList<Project>();
		projects = projectDao.findListProjectBySearchUcpVip(listId);
		List<ProjectBean> result = new ArrayList<ProjectBean>();
		ProjectBean bean;
		for (Project project : projects) {
			bean = new ProjectBean();
			bean.setName(project.getTenProject());
			bean.setType(project.getProjectType().getTenLoaiProject());
			bean.setDescription(project.getMoTa());
			bean.setProjectID(project.getMaProject());
			System.out.println("username: " + username + " --- Owner: " + project.getUser().getUsername());
			if(username.equals(project.getUser().getUsername()))
					bean.setOwner(1); // Project of current user
			else
				bean.setOwner(0);
			result.add(bean);
		}
		return result;
	}
	
	@Override
	public List<ProjectBean> findListProjectBySearchFpRegular(Set<Integer> listId) {
		List<Project> projects =  new ArrayList<Project>();
		projects = projectDao.findListProjectBySearchUcp(listId);
		List<ProjectBean> result = new ArrayList<ProjectBean>();
		ProjectBean bean;
		for (Project project : projects) {
			bean = new ProjectBean();
			bean.setName(project.getTenProject());
			bean.setType(project.getProjectType().getTenLoaiProject());
			bean.setDescription(project.getMoTa());
			bean.setProjectID(project.getMaProject());
			result.add(bean);
		}
		return result;
	}
	
	@Override
	public boolean addProjectShare(ShareProjectBean shareproject) {
		boolean result = true;
		ShareProjectBean share = shareproject;
		for(int i = 0; i< shareproject.getLstUsername().size(); i++ ) {
			share.setShare_user(shareproject.getLstUsername().get(i));		
			if(!projectDao.addProjectShare(share))
					result = false;
		}
		return result;
		
	}

	/*@Override
	public List<ShareProjectBean> getListShareProject(String username) {
		List<ShareProject> listshare = projectDao.getListShareProject(username);
		List<ShareProjectBean> listBean = new ArrayList<ShareProjectBean>();
		listBean.clear();
		ShareProjectBean shareBean;
		for (ShareProject list : listshare) {
			shareBean = new ShareProjectBean();
			shareBean.setIdshare_project(list.getIdshareProject());
			shareBean.setMaProject(list.getProject().getMaProject());
			shareBean.setOwn_user(list.getUser1().getUsername());
			shareBean.setShare_user(list.getUser2().getUsername());
			shareBean.setProjectName(list.getProject().getTenProject());
			shareBean.setType(list.getProject().getProjectType().getTenLoaiProject());
			shareBean.setDescription(list.getProject().getMoTa());
			listBean.add(shareBean);
		}
		
		return listBean;
	}*/
	
	@Override
	public List<ShareProjectBean> getListShareProject(String username) {
		List<ShareProject> listshare = projectDao.getListShareProject(username);
		List<ShareProjectBean> listBean = new ArrayList<ShareProjectBean>();
		listBean.clear();
		ShareProjectBean shareBean;
		for (ShareProject list : listshare) {
			shareBean = new ShareProjectBean();
			shareBean.setIdshare_project(list.getIdshareProject());
			shareBean.setMaProject(list.getProject().getMaProject());
			shareBean.setOwn_user(list.getUser1().getUsername());
			shareBean.setShare_user(list.getUser2().getUsername());
			shareBean.setProjectName(list.getProject().getTenProject());
			shareBean.setType(list.getProject().getProjectType().getTenLoaiProject());
			shareBean.setDescription(list.getProject().getMoTa());
			listBean.add(shareBean);
		}
		
		return listBean;
	}

	@Override
	public boolean discardProject(int[] listId) {
		return projectDao.discardProject(listId);
	}

	@Override
	public List<ShareProjectBean> getListProjectShareByOtherUser(String username) {
		List<ShareProject> listshare = projectDao.getListProjectShareByOtherUser(username);
	
		List<ShareProjectBean> listBean = new ArrayList<ShareProjectBean>();
		listBean.clear();
		ShareProjectBean shareBean;
		for (ShareProject list : listshare) {
			shareBean = new ShareProjectBean();
			shareBean.setIdshare_project(list.getIdshareProject());
			shareBean.setMaProject(list.getProject().getMaProject());
			shareBean.setOwn_user(list.getUser1().getUsername());
			shareBean.setShare_user(list.getUser2().getUsername());
			shareBean.setProjectName(list.getProject().getTenProject());
			shareBean.setType(list.getProject().getProjectType().getTenLoaiProject());
			shareBean.setDescription(list.getProject().getMoTa());
			listBean.add(shareBean);
		}
		
		return listBean;
	}



	

	

}
