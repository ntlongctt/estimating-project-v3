package com.estimating.dao;

import java.util.List;
import java.util.Set;

import com.estimating.beans.ShareProjectBean;
import com.estimating.domain.Project;
import com.estimating.domain.ProjectType;
import com.estimating.domain.ShareProject;

public interface IProjectDao {
	public List<Project> getListProject(String username);
	public List<Project> getListProjectFPEstiamted(String username);
	public List<Project> getListProjectUCEstimated(String username);
	public List<Project> getListProjectByUserName(String username);
	public List<Project> findListProjectBySearchUcpVip(Set<Integer> listId);
	public List<Project> findListProjectBySearchUcp(Set<Integer> listId);
	public List<Project> findListProjectBySearchFpRegular(Set<Integer> listId);
	public List<ProjectType> getListProjectType();
	public List<ShareProject> getListShareProject(String username);
	public List<ShareProject> getListProjectShareByOtherUser(String username);
	public boolean addProject(Project project);
	public boolean checkExistFpEstimating(int projectID);
	public boolean checkExistUcEstimating(int projectID);
	public boolean updateExistUcEstimating(int projectID);
	public boolean updateExistFpEstimating(int projectID);
	public boolean addProjectShare(ShareProjectBean shareproject);
	public boolean discardProject(int[] listId);
	public ProjectType findProjectTypeById(int typeID);
	public Project findProjectById(int id);
}
