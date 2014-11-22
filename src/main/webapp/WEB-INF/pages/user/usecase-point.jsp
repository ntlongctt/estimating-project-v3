<%@page import="com.estimating.domain.UcpEstiamting"%>
<%@page import="org.springframework.context.annotation.Bean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<title>Estimating software</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet"	type="text/css" />
<link href="resources/css/font-awesome.min.css" rel="stylesheet"	type="text/css" />
<link href="resources/css/ionicons.min.css" rel="stylesheet"	type="text/css" />
<link href="resources/css/AdminLTE.css" rel="stylesheet"	type="text/css" />
<link href="resources/font-awesome-4.1.0/css/font-awesome.min.css"	rel="stylesheet" type="text/css">

<script	src="resources/js/jquery-2.0.2.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
<script src="resources/wizard/js/wizard.js"></script>
<script src="resources/wizard/js/jquery.bootstrap.wizard.js"></script>

<link href="resources/wizard/css/smart_wizard.css" rel="stylesheet" type="text/css">
<link href="resources/wizard/css/zice.style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="resources/wizard/js/jquery.smartWizard-2.0.min.js"></script>

<script src="resources/js/jquery.inputmask.bundle.js"></script>
<script>
$(document).ready(function(){
    $(":input").inputmask();
});
</script>
</head>
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
	<jsp:include page="head-banner.jsp" />
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<jsp:include page="left-banner.jsp" />

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Use Case Point</h1>
			</section>

			<section class="content">
				<!-- Smart Wizard wizard1-->
				<div class="onecolumn">
					<!-- <div class="header">
						<span><span class="ico gray wizard"></span>UCP step</span>
					</div> -->
					<div class="clear"></div>
					<div class="content">
					<div id="wizard1" class="swMain">				
							<ul>
								<li><a href="#step-1"> 
									<span class="stepNumber">1</span><span class="stepDesc"> Step 1<br /> <small>Choose or create project</small></span></a>
								</li>
								<li><a href="#step-2"> 
									<span class="stepNumber">2</span><span class="stepDesc"> Step 2<br /> <small>UUCW Calculation</small></span></a>
								</li>
								<li><a href="#step-3"> 
									<span class="stepNumber">3</span><span class="stepDesc"> Step 3<br /> <small>UAW Calculation</small></span></a>
								</li>
								<li><a href="#step-4"> 
									<span class="stepNumber">4</span><span class="stepDesc"> Step 4<br /> <small>TFC Calculation</small></span></a>
								</li>
								<li><a href="#step-5"> 
									<span class="stepNumber">5</span><span class="stepDesc"> Step 5<br /> <small>EFC Calculation</small></span></a>
								</li>
								<li><a href="#step-6"> 
									<span class="stepNumber">6</span><span class="stepDesc"> Result<br /> <small>Show Resulft</small></span></a>
								</li>
							</ul>
							<!-- STEP 1 -->
							
							<div id="step-1" style="width: 100%">
								<h2 class="StepTitle">Step 1 Content</h2>
								<div class="col-6" style="margin: 50px 0 0 0">
									<label>Select current project</label> 
									<select class="form-control" name="selectProject">
										<c:forEach var="project" items="${listProject}" >
											<option value="${project.maProject}">${project.tenProject}</option>
										</c:forEach>
									</select>
									
								</div>
								<div class="col-6" style="margin: 50px 0 0 0">
									<button class="btn bg-purple margin" data-toggle="modal"
										data-target="#myModal-newp-roject" >Create New Project</button>
								</div>
							</div>

							<!-- STEP 2 -->
							
							<div id="step-2" style="width: 100%">
								<h2 class="StepTitle">
									Step 2: Unadjusted Use Case Weight <small style="font-size: 100%; color: #D24D4D"><i
										class="fa fa-fw fa-info-circle" data-toggle="modal"
										data-target="#myModal"></i></small>
								</h2>
								<div class="col-12" style="margin: 50px 0 0 40px">

									<label><a href="ucp-step-decription.html#easy" target="_blank">Easy</a></label> 
										<input type="text" class="form-control" id="simple" name="simple"
										placeholder="Less than 4 transactions..." > 
									<label><a href="ucp-step-decription.html#medium" target="_blank">Medium</a></label>
										<input type="text" class="form-control" id="average" name="average"
										placeholder="From 4 to 7 transactions..."> 
									<label><a href="ucp-step-decription.html#difficult" target="_blank">Difficult</a></label>
										<input type="text" class="form-control" id="complex" name="complex"
										placeholder="More than 7 transactions...">
								</div>
							</div>

							<!-- STEP 3 -->
							<div id="step-3" style="width: 100%" >
								<h2 class="StepTitle">
									Step 3: Unadjusted Function Weight <small style="font-size: 100%; color: #D24D4D"><i
										class="fa fa-fw fa-info-circle" data-toggle="modal"
										data-target="#myModal"></i></small>
								</h2>

								<div class="col-12" style="margin: 50px 0 0 40px">
									<label><a href="ucp-step-decription.html#simple" target="_blank">Simple</a></label> 
										<input type="text" class="form-control" id="easy" name="easy"
										placeholder="Less than 4 transactions..."> 
									<label><a href="ucp-step-decription.html#avegare" target="_blank">Average</a></label>
										<input type="text" class="form-control" id="medium" name="medium"
										placeholder="From 4 to 7 transactions..."> 
									<label><a href="ucp-step-decription.html#complex" target="_blank">Complex</a></label>
										<input type="text" class="form-control" id="difficult" name="difficult"
										placeholder="More than 7 transactions..."> 
								</div>

							</div>

							<!-- STEP 4 -->
							<div id="step-4" style="height: 530px">
								<h2 class="StepTitle">
									Step 4: Technical Complexity Factor <small style="font-size: 100%; color: #D24D4D"><i
										class="fa fa-fw fa-info-circle" data-toggle="modal"
										data-target="#myModal2"></i></small>
								</h2>


								<div class="row">
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Distributed-system" target="_blank">Distributed system:</a></label> <input type="text"
												class="form-control" id="distributed" name="distributed"
												placeholder="Distributed system:">
										</div>
									</div>
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Performance-objectives" target="_blank">Performance objectives:</a></label> <input type="text"
												class="form-control" id="performance" name="performance"
												placeholder="Performance objectives:">
										</div>
									</div>
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#End-User-efficiency" target="_blank">End User efficiency:</a></label> <input type="text"
												class="form-control" id="endUserefficiency" name="endUserefficiency"
												placeholder="End User efficiency">
										</div>
									</div>
									<!-- Complex Processing -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Complex-Processing" target="_blank">Complex Processing:</a></label> <input type="text"
												class="form-control" id="complexProcessing" name="complexProcessing"
												placeholder="Complex Processing">
										</div>
									</div>
									<!-- Reusable Code -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Reusable-Code" target="_blank">Reusable Code:</a></label> <input type="text"
												class="form-control" id="reusableCode" name="reusableCode"
												placeholder="Reusable Code">
										</div>
									</div>
									<!-- Ease of Installation -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Ease-of-Installation" target="_blank">Ease of Installation:</a></label> <input type="text"
												class="form-control" id="easeofInstallation" name="easeofInstallation"
												placeholder="Ease of Installation">
										</div>
									</div>
									<!-- Ease of Use -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Ease-of-Use" target="_blank">Ease of Use:</a></label> <input type="text"
												class="form-control" id="easeofUse" name="easeofUse"
												placeholder="Ease of Use">
										</div>
									</div>
									<!-- Portable -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Portable" target="_blank">Portable:</a></label> <input type="text"
												class="form-control" id="portable" name="portable"
												placeholder="Portable">
										</div>
									</div>
									<!-- Ease of Change -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Ease-of-Change" target="_blank">Ease of Change:</a></label> <input type="text"
												class="form-control" id="easeofChange" name="easeofChange"
												placeholder="Ease of Change">
										</div>
									</div>
									<!-- Concurrent Use -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Concurrent-Use" target="_blank">Concurrent Use:</a></label> <input type="text"
												class="form-control" id="concurrentUse" name="concurrentUse"
												placeholder="Concurrent Use">
										</div>
									</div>
									<!-- Special Security -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Special-Security" target="_blank">Special Security:</a></label> <input type="text"
												class="form-control" id="specialSecurity" name="specialSecurity"
												placeholder="Special Security">
										</div>
									</div>
									<!-- Access for Third Parties -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Access-for-Third-Parties" target="_blank">Access for Third Parties:</a></label> <input type="text"
												class="form-control" id="accessforThirdParties" name="accessforThirdParties"
												placeholder="Access for Third Parties">
										</div>
									</div>
									<!-- Training Needs -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Training-Needs" target="_blank">Training Needs:</a></label> <input type="text"
												class="form-control" id="trainingNeeds" name="trainingNeeds"
												placeholder="Training Needs">
										</div>
									</div>
								</div>
							</div>
							<!-- end technical factors calculator  -->
							<!-- END STEP 4 -->

							<!-- STEP 5 -->
							<div id="step-5" style="height: 400px">
								<h2 class="StepTitle">
									Step 5: Environmental Complexity Factor 
									<small style="font-size: 100%; color: #D24D4D">
									<i class="fa fa-fw fa-info-circle" data-toggle="modal" data-target="#myModal3"></i></small>
								</h2>
								
								<div style="margin-top: 50px">
									<!-- Familiar with Development Process -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Familiar" target="_blank">Familiar with Development Process</a></label> <input
												type="text" class="form-control" id="familiarwithDevelopmentProcess" name="familiarwithDevelopmentProcess"
												placeholder="0"  data-inputmask="'mask': '5'">
										</div>
									</div>
									<!-- Application Experience -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Application-Experience" target="_blank">Application Experience</a></label> <input type="text"
												class="form-control" id="applicationExperience" name="applicationExperience"
												placeholder="0"  data-inputmask="'mask': '5'">
										</div>
									</div>
									<!-- Object-Oriented Experience -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Object-Oriented-Experience" target="_blank">Object-Oriented Experience</a></label> <input type="text"
												class="form-control" id="objectOrientedExperience" name="objectOrientedExperience"
												placeholder="0"data-inputmask="'mask': '5'">
										</div>
									</div>
									<!-- Lead Analyst Capability -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Lead-Analyst-Capability" target="_blank">Lead Analyst Capability</a></label> <input type="text"
												class="form-control" id="leadAnalystCapability" name="leadAnalystCapability"
												placeholder="0" data-inputmask="'mask': '5'">
										</div>
									</div>
									<!-- Motivation -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#step2" target="_blank">Motivation</a></label> <input type="text"
												class="form-control" id="motivation" name="motivation"
												placeholder="0" data-inputmask="'mask': '5	'">
										</div>
									</div>
									<!-- Stable Requirements -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Motivation" target="_blank">Stable Requirements</a></label> <input type="text"
												class="form-control" id="stableRequirements" name="stableRequirements"
												placeholder="0" data-inputmask="'mask': '5'">
										</div>
									</div>
									<!-- Part-time Staff -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Part-time-Staff" target="_blank">Part-time Staff</a></label> <input type="text"
												class="form-control" id="txtPart-time-Staff" name="txtPart-time-Staff"
												placeholder="0" data-inputmask="'mask': '5'">
										</div>
									</div>
									<!-- Difficult Programming Language -->
									<div class="col-sm-5 col-sm-offset-1">
										<div class="form-group">
											<label><a href="ucp-step-decription.html#Difficult_Programming_Language" target="_blank">Difficult Programming Language</a></label> <input
												type="text" class="form-control" id="difficulProgrammingLanguage" name="difficulProgrammingLanguage"
												placeholder="0" data-inputmask="'mask': '5'">
										</div>
									</div>
								</div>
								<h3>In this step, entered values must fall into range (0-5) : 
								<a href="#" data-toggle="tooltip"	data-original-title="Value 0: Easy. Within one week the language can be picked up.">0</a> -
								<a href="#" data-toggle="tooltip"	data-original-title="Value 1: At least two week is needed to pick up the language.">1</a> -
								<a href="#" data-toggle="tooltip"	data-original-title="Value 2: At least one month is needed to pick up the language.">2</a> -
								<a href="#" data-toggle="tooltip"	data-original-title="Value 3: Special training neededfor the language.">3</a> -
								<a href="#" data-toggle="tooltip"	data-original-title="Value 4: Special training needed for the language and need help during the project.">4</a> -
								<a href="#" data-toggle="tooltip"	data-original-title="Value 5: Difficult. Needs only experienced people.">5</a>
								with complexity effect to project!
								</h3>
							</div>
							<!-- END STEP 5 -->

							<!-- RESULT -->
							<div id="step-6" style="height: 460px">
								<h2 class="StepTitle">Result: Use case point with your
									infomation</h2>
								<div style="margin-top: 30px">
									<div class="row" style="margin-top: 5px; margin-bottom: 10px">
									<div class="col-sm-5 col-sm-offset-1">
										<button class="btn btn-primary btn-flat" style="width: 92px" id="save" onclick="PreviewUsecasePoint();" >Preview</button>
										<button class="btn btn-success btn-flat" style="width: 92px" id="save" onclick="saveUcPoint();" >Save</button>
									</div>
									</div>
									<div class="row">
										<div class="col-sm-5 col-sm-offset-1">
											<ul class="list-group">
												<li class="list-group-item">
												<span id="ucw" class="badge" >0</span>
													UUCW - Unadjusted Use Case Weight</li>
											</ul>
											<ul class="list-group">
												<li class="list-group-item"><span  id="uaw" class="badge">0</span>
													UAW - Unadjusted Actor Weight</li>
											</ul>
											<ul class="list-group">
												<li class="list-group-item"><span id="uucp" class="badge">0</span>
													UUCP - Unadjusted Use Case Points</li>
											</ul>
											<ul class="list-group">
												<li class="list-group-item"><span id="tcf" class="badge">0</span>
													TCF - Technical Complexity Factor</li>
											</ul>
											<ul class="list-group">
												<li class="list-group-item"><span id="efc" class="badge">0</span>
													EF - Enviromental Factor</li>
											</ul>
											<ul class="list-group">
												<li class="list-group-item">
												<span id="ucp" class="badge">0</span>
													UCP - Use Case Points</li>
											</ul>
										</div>

										<div class="col-sm-5 col-sm-offset-1">

											<div class="input-group" style="margin-bottom: 10px">
												<span class="input-group-addon">Enter value to change default minimum value</span> 
												<input type="number" id="minimun_hours_input" style="width: 100px" value="15">
											</div>
											<div class="input-group" style="margin-bottom: 10px">
												<span class="input-group-addon">Enter value to change default maximun value</span>
												<input type="number"  id="maximun_hours_input" style="width: 100px"  value="25">
											</div>
											<div class="input-group" style="margin-bottom: 10px">
												<span class="input-group-addon">Enter value to change devired maximun value</span>
												<input type="number" id="devired_hours_input" style="width: 100px" value="20">
											</div>
											
											<ul class="list-group">
												<li class="list-group-item" ><span class="badge" id="minimun_hours">0</span>Minumum
													hours</li>
											</ul>
											<ul class="list-group">
												<li class="list-group-item"><span class="badge" id="maximun_hours">0</span>Maximum
													hours</li>
											</ul>
											<ul class="list-group">
												<li class="list-group-item"><span class="badge" id="devired_hours">0</span>Derived
													hours</li>
											</ul>
											<p>Cost: 3,430,000 VND</p>
											
										</div>
									</div>
								</div>
								<!-- END -->
							</div>
							 
						</div>
					<div class="clear"></div>
					</div>
				</div>

	<!-- // End onecolumn -->

	</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->
	
		<!-- MODAL STEP 2 -->
		<div class="modal fade" id="myModal" tabindex="-1"	role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">Unadjusted Use Case Weight</h4>
					</div>
					<div class="modal-body">
					 The UUCW is one of the factors that contribute to the size of the software being developed. It is calculated based on the number and complexity of the use cases for the system.
					 To find the UUCW for a system, each of the use cases must be identified and classified as Simple, Average or Complex based on the number of transactions the use case contains. 
					 Each classification has a predefined weight assigned. Once all use cases have been classified as simple, average or complex, the total weight (UUCW) is determine by summing the corresponding weights for each use case.
					 The following chart shows the different classifications of use cases based on the number of transactions and the weight value assigned for each use case within the classification. 												
					<small><a href="ucp-document.html#history" target="_blank"><i>Read more</i></a></small>
					</div>
					
				</div>
			</div>
		</div>
	
		<!-- MODAL STEP 3 -->
		<div class="modal fade" id="myModal" tabindex="-1"	role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">Unadjusted Use Case Weight</h4>
					</div>
					<div class="modal-body">
					 The UUCW is one of the factors that contribute to the size of the software being developed. It is calculated based on the number and complexity of the use cases for the system.
					 To find the UUCW for a system, each of the use cases must be identified and classified as Simple, Average or Complex based on the number of transactions the use case contains. 
					 Each classification has a predefined weight assigned. Once all use cases have been classified as simple, average or complex, the total weight (UUCW) is determine by summing the corresponding weights for each use case.
					 The following chart shows the different classifications of use cases based on the number of transactions and the weight value assigned for each use case within the classification. 												
					<small><a href="ucp-document.html#history" target="_blank"><i>Read more</i></a></small>
					</div>
				</div>
			</div>
		</div>
		
		<!-- MODAL STEP 4 -->
		<div class="modal fade" id="myModal2" tabindex="-1"	role="dialog" aria-labelledby="myModalLabel2">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel2">Technical Complexity Factor</h4>
					</div>
					<div class="modal-body">
					 The TCF is one of the factors applied to the estimated size of the software in order to account for technical considerations of the system. 
					 It is determined by assigning a score between 0 (factor is irrelevant) and 5 (factor is essential) to each of the 13 technical factors listed in the table below. 
					 This score is then multiplied by the defined weighted value for each factor. The total of all calculated values is the technical factor (TF). The TF is then used to compute the TCF with the following formula 												
					<small><a href="#"><i>Read more</i></a></small>
					</div>
				</div>
			</div>
		</div>
		
		<!-- MODAL STEP 5 -->
		<div class="modal fade" id="myModal3" tabindex="-1"	role="dialog" aria-labelledby="myModalLabel3">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel3">Environmental Complexity Factor</h4>
					</div>
					<div class="modal-body">
					 The ECF is another factor applied to the estimated size of the software in order to account for environmental considerations of the system. 
					 It is determined by assigning a score between 0 (no experience) and 5 (expert) to each of the 8 environmental factors listed in the table below. 
					 This score is then multiplied by the defined weighted value for each factor. The total of all calculated values is the environment factor (EF). 
					 The EF is then used to compute the ECF with the following formula.
					 <small><a href="#"><i>Read more</i></a></small>
					</div>
				</div>
			</div>
		</div>
		
		<!-- MODAL NEW PROJECT -->
		<div class="modal fade" id="myModal-newp-roject" tabindex="-1"	role="dialog" aria-labelledby="myModalLabel3">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel3">Create New Project</h4>
					</div>
				<div class="modal-body">
				<form action="addProject.html" method="POST">
					<label>Project's Name</label> 
					<input type="text" class="form-control" name="txtProjectName" id="exampleInputEmail1"	placeholder="Project's Name"> 
					
					<label>Select project type :</label> 
					<select class="form-control" name="typeProject">
						<c:forEach var="projectType" items="${listProjectType}">
							<option value="${projectType.maLoaiProject }">${projectType.tenLoaiProject }</option>
						</c:forEach>
					</select>
					
					<label>Description</label>
					<textarea class="form-control" name="txtDescription"  placeholder="Enter ..."></textarea>
					
					<button type="submit" class="btn bg-purple margin"  >Create</button>
				</form>	
				</div>
			</div>
			</div>
		</div>
</body>
<script type="text/javascript" src="resources/js/myjs/usecase-point.js"></script>
</html>