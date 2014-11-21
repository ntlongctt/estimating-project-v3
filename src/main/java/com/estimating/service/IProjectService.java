package com.estimating.service;

import java.util.List;

import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;

public interface IProjectService {
	public List<Project> getListProject();
	public boolean addProject(Project project);
	public List<Project> getListProjectFPEstiamted();
	public List<ProjectType> getListProjectType();
	public ProjectType findProjectById(int id);
	public boolean checkExistFpEstimating(int projectID);
}
