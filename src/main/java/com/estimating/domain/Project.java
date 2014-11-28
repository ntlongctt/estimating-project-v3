package com.estimating.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the projects database table.
 * 
 */
@Entity
@Table(name="projects")
@NamedQuery(name="Project.findAll", query="SELECT p FROM Project p")
public class Project implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int maProject;

	private byte FP_Estiamted;

	private String moTa;

	private String tenProject;

	private byte UCP_Estimated;

	//bi-directional many-to-one association to FeedBack
	@OneToMany(mappedBy="project")
	private List<FeedBack> feedBacks;

	//bi-directional many-to-one association to FpEstimating
	@OneToMany(mappedBy="project")
	private List<FpEstimating> fpEstimatings;

	//bi-directional many-to-one association to ProjectType
	@ManyToOne
	@JoinColumn(name="MaLoaiProject")
	private ProjectType projectType;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="Username")
	private User user;

	//bi-directional many-to-one association to RealCost
	@OneToMany(mappedBy="project")
	private List<RealCost> realCosts;

	//bi-directional many-to-one association to ShareProject
	@OneToMany(mappedBy="project")
	private List<ShareProject> shareProjects;

	//bi-directional many-to-one association to UcpEstiamting
	@OneToMany(mappedBy="project")
	private List<UcpEstiamting> ucpEstiamtings;

	public Project() {
	}

	public int getMaProject() {
		return this.maProject;
	}

	public void setMaProject(int maProject) {
		this.maProject = maProject;
	}

	public byte getFP_Estiamted() {
		return this.FP_Estiamted;
	}

	public void setFP_Estiamted(byte FP_Estiamted) {
		this.FP_Estiamted = FP_Estiamted;
	}

	public String getMoTa() {
		return this.moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getTenProject() {
		return this.tenProject;
	}

	public void setTenProject(String tenProject) {
		this.tenProject = tenProject;
	}

	public byte getUCP_Estimated() {
		return this.UCP_Estimated;
	}

	public void setUCP_Estimated(byte UCP_Estimated) {
		this.UCP_Estimated = UCP_Estimated;
	}

	public List<FeedBack> getFeedBacks() {
		return this.feedBacks;
	}

	public void setFeedBacks(List<FeedBack> feedBacks) {
		this.feedBacks = feedBacks;
	}

	public FeedBack addFeedBack(FeedBack feedBack) {
		getFeedBacks().add(feedBack);
		feedBack.setProject(this);

		return feedBack;
	}

	public FeedBack removeFeedBack(FeedBack feedBack) {
		getFeedBacks().remove(feedBack);
		feedBack.setProject(null);

		return feedBack;
	}

	public List<FpEstimating> getFpEstimatings() {
		return this.fpEstimatings;
	}

	public void setFpEstimatings(List<FpEstimating> fpEstimatings) {
		this.fpEstimatings = fpEstimatings;
	}

	public FpEstimating addFpEstimating(FpEstimating fpEstimating) {
		getFpEstimatings().add(fpEstimating);
		fpEstimating.setProject(this);

		return fpEstimating;
	}

	public FpEstimating removeFpEstimating(FpEstimating fpEstimating) {
		getFpEstimatings().remove(fpEstimating);
		fpEstimating.setProject(null);

		return fpEstimating;
	}

	public ProjectType getProjectType() {
		return this.projectType;
	}

	public void setProjectType(ProjectType projectType) {
		this.projectType = projectType;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<RealCost> getRealCosts() {
		return this.realCosts;
	}

	public void setRealCosts(List<RealCost> realCosts) {
		this.realCosts = realCosts;
	}

	public RealCost addRealCost(RealCost realCost) {
		getRealCosts().add(realCost);
		realCost.setProject(this);

		return realCost;
	}

	public RealCost removeRealCost(RealCost realCost) {
		getRealCosts().remove(realCost);
		realCost.setProject(null);

		return realCost;
	}

	public List<ShareProject> getShareProjects() {
		return this.shareProjects;
	}

	public void setShareProjects(List<ShareProject> shareProjects) {
		this.shareProjects = shareProjects;
	}

	public ShareProject addShareProject(ShareProject shareProject) {
		getShareProjects().add(shareProject);
		shareProject.setProject(this);

		return shareProject;
	}

	public ShareProject removeShareProject(ShareProject shareProject) {
		getShareProjects().remove(shareProject);
		shareProject.setProject(null);

		return shareProject;
	}

	public List<UcpEstiamting> getUcpEstiamtings() {
		return this.ucpEstiamtings;
	}

	public void setUcpEstiamtings(List<UcpEstiamting> ucpEstiamtings) {
		this.ucpEstiamtings = ucpEstiamtings;
	}

	public UcpEstiamting addUcpEstiamting(UcpEstiamting ucpEstiamting) {
		getUcpEstiamtings().add(ucpEstiamting);
		ucpEstiamting.setProject(this);

		return ucpEstiamting;
	}

	public UcpEstiamting removeUcpEstiamting(UcpEstiamting ucpEstiamting) {
		getUcpEstiamtings().remove(ucpEstiamting);
		ucpEstiamting.setProject(null);

		return ucpEstiamting;
	}

}