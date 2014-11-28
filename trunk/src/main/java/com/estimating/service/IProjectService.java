package com.estimating.service;

import java.util.List;
import java.util.Map;

import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;

public interface IProjectService {
	public List<Project> getListProject(String username);
	public boolean addProject(Project project);
	public List<Project> getListProjectFPEstiamted(String username);
	public List<Project> getListProjectUCEstimated(String username);
	public List<ProjectType> getListProjectType();
	public Project findProjectById(int id);
	public boolean checkExistFpEstimating(int projectID);
	public boolean checkExistUcEstimating(int projectID);
	public boolean uodateExistUcEstimating(int projectID);
	public boolean updateExistFpEstimating(int projectID);
	public List<Project> getListProjectByUserName(String username);
	public Map<String, Object>  getListFpVsUcp(int projectID);
	public ProjectType findProjectTypeById(int typeID);
	//public Project findProjectById(Project project);
}
