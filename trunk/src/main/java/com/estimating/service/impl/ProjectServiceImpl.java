package com.estimating.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.estimating.beans.FuntionPointBean;
import com.estimating.dao.IFpEstimatingDao;
import com.estimating.dao.IProjectDao;
import com.estimating.domain.FpEstimating;
import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;
import com.estimating.service.IProjectService;
import com.estimating.utils.ParseStringToArrayUtils;

@Service
public class ProjectServiceImpl implements IProjectService {

	@Autowired
	IProjectDao projectDao;
 
	@Autowired
	IFpEstimatingDao fpDao;
	
	/*@Autowired
	IUseCasePointDao ucDao;*/

	@Override
	public List<Project> getListProject() {
		return projectDao.getListProject();
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
	public ProjectType findProjectById(int id) {
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
	public List<Project> getListProjectUCEstimated() {
		return projectDao.getListProjectUCEstimated();
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
			fpBean.setUiSimple(uo.get(0));
			fpBean.setUiAverage(uo.get(1));
			fpBean.setUiComplex(uo.get(2));
			//set User Online queries
			List<Double> uq = ParseStringToArrayUtils.parseToArray(fp.getUser_Online_Query());
			fpBean.setUiSimple(uq.get(0));
			fpBean.setUiAverage(uq.get(1));
			fpBean.setUiComplex(uq.get(2));
			//Set Logical file
			List<Double> ilf = ParseStringToArrayUtils.parseToArray(fp.getLogical_File());
			fpBean.setUiSimple(ilf.get(0));
			fpBean.setUiAverage(ilf.get(1));
			fpBean.setUiComplex(ilf.get(2));
			//Set External Interface
			List<Double> eif = ParseStringToArrayUtils.parseToArray(fp.getExternal_Interface());
			fpBean.setUiSimple(eif.get(0));
			fpBean.setUiAverage(eif.get(1));
			fpBean.setUiComplex(eif.get(2));
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
			fpBean.setTenProject(fp.getProject().getTenProject() + " v" + fp.getVersion() + " - " + fp.getNgay());
			fpBean.setFpID(fp.getMaFP_Es());
			lstFpBean.add(fpBean);
		}
		
//		for (FpEstimating project : lstFp) {
//			projectBean = new ProjectBean();
//			projectBean.setName(project.getTenProject());
//			projectBean.setType(project.getProjectType().getTenLoaiProject());
//			projectBean.setDescription(project.getMoTa());
//			projectBean.setProjectID(project.getMaProject());
//			lstPrjBean.add(projectBean);
//		}
		
		maps.put("listFp", lstFpBean);
//		maps.put("listUc", ucDao.getListUcpEstimated(projectID));
		return maps;
	}

	@Override
	public List<Project> getListProjectFPEstiamted(String username) {
		return projectDao.getListProjectFPEstiamted(username);
	}

}
