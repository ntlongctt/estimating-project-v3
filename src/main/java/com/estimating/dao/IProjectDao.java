package com.estimating.dao;

import java.util.List;

import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;

public interface IProjectDao {
	public List<Project> getListProject();
	public boolean addProject(Project project);
	public List<ProjectType> getListProjectType();
	public List<Project> getListProjectFPEstiamted();
	public ProjectType findProjectById(int id);
	public boolean checkExistFpEstimating(int projectID);
}
