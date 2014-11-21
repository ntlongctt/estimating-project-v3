package com.estimating.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.estimating.dao.IProjectDao;
import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;
import com.estimating.service.IProjectService;

@Service
public class ProjectServiceImpl implements IProjectService {

	@Autowired
	IProjectDao projectDao;

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
	public List<Project> getListProjectFPEstiamted() {
		return projectDao.getListProjectFPEstiamted();
	}

	@Override
	public boolean checkExistFpEstimating(int projectID) {
		return projectDao.checkExistFpEstimating(projectID);
	}
	
	
}
