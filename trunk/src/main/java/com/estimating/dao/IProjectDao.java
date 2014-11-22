package com.estimating.dao;

import java.util.List;

import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;

public interface IProjectDao {
	public List<Project> getListProject(String username);
	public boolean addProject(Project project);
	public List<ProjectType> getListProjectType();
	public List<Project> getListProjectFPEstiamted(String username);
	public List<Project> getListProjectUCEstimated();
	public Project findProjectById(int id);
	public boolean checkExistFpEstimating(int projectID);
	public boolean checkExistUcEstimating(int projectID);
	public boolean updateExistUcEstimating(int projectID);
	public boolean updateExistFpEstimating(int projectID);
	public List<Project> getListProjectByUserName(String username);
	public ProjectType findProjectTypeById(int typeID);
}
