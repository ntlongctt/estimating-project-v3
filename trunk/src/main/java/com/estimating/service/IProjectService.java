package com.estimating.service;

import java.util.List;
import java.util.Map;

import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;

public interface IProjectService {
	public List<Project> getListProject();
	public boolean addProject(Project project);
	public List<Project> getListProjectFPEstiamted();
	public List<Project> getListProjectUCEstimated();
	public List<ProjectType> getListProjectType();
	public ProjectType findProjectById(int id);
	public boolean checkExistFpEstimating(int projectID);
	public boolean checkExistUcEstimating(int projectID);
	public boolean uodateExistUcEstimating(int projectID);
	public boolean updateExistFpEstimating(int projectID);
	public List<Project> getListProjectByUserName(String username);
	public Map<String, Object>  getListFpVsUcp(int projectID);
}
