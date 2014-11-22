<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<title>Function point method</title>

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
				<h1>Function Point</h1>
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
									<span class="stepNumber" style="width: 100px">1</span><span class="stepDesc"> Step 1<br /> <small>Choose or create project</small></span></a>
								</li>
								<li><a href="#step-2"> 
									<span class="stepNumber" style="width: 120px">2</span><span class="stepDesc"> Step 2<br /> <small>UFP Calculation</small></span></a>
								</li>
								<li><a href="#step-3"> 
									<span class="stepNumber" style="width: 120px">3</span><span class="stepDesc"> Step 3<br /> <small>VAF Calculation</small></span></a>
								</li>
								<li><a href="#step-4"> 
									<span class="stepNumber" style="width: 120px">4</span><span class="stepDesc"> Result<br /> <small>Show Resulft</small></span></a>
								</li>
							</ul>
							<!-- STEP 1 -->
							<div id="step-1">
								<h2 class="StepTitle">Step 1 Content</h2>
								<div class="col-6" style="margin: 50px 0 0 0">
									<label>Select current project</label> 
									<select class="form-control" name = "selectProject" style="width: 800px" id="selectProject">
										<c:forEach var="project" items="${listProject }">
											<option value="${ project.maProject}">${ project.tenProject}</option>
										</c:forEach>
									</select>
									
								</div>
								<div class="col-6" style="margin: 50px 0 0 0">
									<button class="btn bg-purple margin" data-toggle="modal"
										data-target="#myModal-newp-roject" >Create New Project</button>
								</div>
								

							</div>



							<!-- STEP 2 -->
							<div id="step-2" style="height: 400px; width: 100%">
								<h2 class="StepTitle">
									Step 2:Unadjusted Function Point Count <small><i
										class="fa fa-fw fa-info-circle" data-toggle="modal"
										data-target="#myModal"></i></small>
								</h2>
								<div class="box">
									<div class="box-header">
										<h3 class="box-title">Domain Characteristic Table</h3>
									</div>
									<!-- /.box-header -->
									<div class="box-body table-responsive no-padding">
										<table class="table ">
											<tr>
												<th style="width: 20px" rowspan="2"><h3>NO.</h3></th>
												<th style="width: 700px" rowspan="2"><h3>MEASUREMENT
														PARAMETER</h3></th>
												<th colspan="3"><span style="margin-left: 100px">WEIGHTING
														FACTOR</span></th>

											</tr>
											<tr>
												<th>Simple</th>
												<th>Average</th>
												<th>Complex</th>
											</tr>
											<tr>
												<td>1</td>
												<td>Number of User Input</td>
												<td><input type="text" id="uiSimple" name="uiSimple" placeholder="0"></td>
												<td><input type="text" id="uiAverage" name="uiAverage" placeholder="0"></td>
												<td><input type="text" id="uiComplex" name ="uiComplex" placeholder="0"></td>
											</tr>
											<tr>
												<td>2</td>
												<td>Number of User Outputs</td>
												<td><input type="text" id="uoSimple" name="uoSimple" placeholder="0"></td>
												<td><input type="text" id="uoAverage" name="uoAverage" placeholder="0"></td>
												<td><input type="text" id="uoComplex" name="uoComplex" placeholder="0"></td>
											</tr>
											<tr>
												<td>3</td>
												<td>Number of User Inquiries</td>
												<td><input type="text" id="uqSimple" name="uqSimple" placeholder="0"></td>
												<td><input type="text" id="uqAverage" name="uqAverage" placeholder="0"></td>
												<td><input type="text" id="uqComplex" name="uqComplex" placeholder="0"></td>
											</tr>
											<tr>
												<td>4</td>
												<td>Number of Files</td>
												<td><input type="text" id="ilfSimple" name="ilfSimple" placeholder="0"></td>
												<td><input type="text" id="ilfAverage" name="ilfAverage" placeholder="0"></td>
												<td><input type="text" id="ilfComplex" name="ilfComplex" placeholder="0"></td>
											</tr>
											<tr>
												<td>5</td>
												<td>Number of External Interfaces</td>
												<td><input type="text" id="eifSimple" name="eifSimple" placeholder="0"></td>
												<td><input type="text" id="eifAverage" name="eifAverage" placeholder="0"></td>
												<td><input type="text" id="eifComplex" name="eifComplex" placeholder="0"></td>
											</tr>

										</table>
									</div>
									<!-- /.box-body -->
								</div>
								<!-- /.box -->
							</div>

							<!-- STEP 3 -->
							<div id="step-3" style="width: 100%; height: 700px">
								<h2 class="StepTitle">
									Step 3: Adjustment Factor (VAF) Calculation Table<small><i
										class="fa fa-fw fa-info-circle" data-toggle="modal"
										data-target="#myModal"></i></small>
								</h2>
								<div class="box">
									<div class="box-header">
										<h3 class="box-title">Striped Full Width Table</h3>
									</div>
									<!-- /.box-header -->
									<div class="box-body table-responsive no-padding">
										<table class="table table-condensed">
											<tr>
												<th style="width: 10px">NO.</th>
												<th style="width: 700px">COMPLEXITY ADJUSTMENT
													QUESTIONS</th>
												<th>0</th>
												<th>1</th>
												<th>2</th>
												<th>3</th>
												<th>4</th>
												<th>5</th>
											</tr>
											<!-- Does the system require reliable backup and recovery? -->
											<tr>
												<td>1.</td>
												<td>Does the system require reliable backup and
													recovery?</td>
												<td><label><input type="radio" id="rf1_1" name="rf1" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf1_2" name="rf1" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf1_3" name="rf1" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf1_4" name="rf1" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf1_5" name="rf1" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf1_6" name="rf1" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Are data communications required? -->
											<tr>
												<td>2.</td>
												<td>Are data communications required?</td>
												<td><label><input type="radio" id="rf2_1" name="rf2" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf2_2" name="rf2" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf2_3" name="rf2" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf2_4" name="rf2" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf2_5" name="rf2" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf2_6" name="rf2" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Are there distributed processing functions? -->
											<tr>
												<td>3.</td>
												<td>Are there distributed processing functions?</td>
												<td><label><input type="radio" id="rf3_1" name="rf3" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf3_2" name="rf3" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf3_3" name="rf3" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf3_4" name="rf3" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf3_5" name="rf3" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf3_6" name="rf3" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Is performance critical? -->
											<tr>
												<td>4.</td>
												<td>Is performance critical?</td>
												<td><label><input type="radio" id="rf4_1" name="rf4" value="0"
														class="minimal-red" checked /></label></td> 
												<td><label><input type="radio" id="rf4_2" name="rf4" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf4_3" name="rf4" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf4_4" name="rf4" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf4_5" name="rf4" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf4_6" name="rf4" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Will the system run in an existing, heavily utilized operational environment? -->
											<tr>
												<td>5.</td>
												<td>Will the system run in an existing, heavily
													utilized operational environment?</td>
												<td><label><input type="radio" id="rf5_1" name="rf5" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf5_2" name="rf5" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf5_3" name="rf5" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf5_4" name="rf5" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf5_5" name="rf5" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf5_6" name="rf5" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Does the system require on-line data entry? -->
											<tr>
												<td>6.</td>
												<td>Does the system require on-line data entry?</td>
												<td><label><input type="radio" id="rf6_1" name="rf6" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf6_2" name="rf6" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf6_3" name="rf6" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf6_4" name="rf6" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf6_5" name="rf6" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf6_6" name="rf6" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Does the on-line data entry require the input transaction to be built over multiple screens or operations? -->
											<tr>
												<td>7.</td>
												<td>Does the on-line data entry require the input
													transaction to be built over multiple screens or
													operations?</td>
												<td><label><input type="radio" id="rf7_1" name="rf7" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf7_2" name="rf7" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf7_3" name="rf7" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf7_4" name="rf7" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf7_5" name="rf7" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf7_6" name="rf7" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Are the master files updated on-line? -->
											<tr>
												<td>8.</td>
												<td>Are the master files updated on-line?</td>
												<td><label><input type="radio" id="rf8_1" name="rf8" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf8_2" name="rf8" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf8_3" name="rf8" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf8_4" name="rf8" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf8_5" name="rf8" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf8_6" name="rf8" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Are the inputs, outputs, files or inquiries complex? -->
											<tr>
												<td>9.</td>
												<td>Are the inputs, outputs, files or inquiries
													complex?</td>
												<td><label><input type="radio" id="rf9_1" name="rf9" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf9_2" name="rf9" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf9_3" name="rf9" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf9_4" name="rf9" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf9_5" name="rf9" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf9_6" name="rf9" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Is the internal processing complex? -->
											<tr>
												<td>10.</td>
												<td>Is the internal processing complex?</td>
												<td><label><input type="radio" id="rf10_1" name="rf10" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf10_2" name="rf10" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf10_3" name="rf10" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf10_4" name="rf10" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf10_5" name="rf10" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf10_6" name="rf10" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Is the code to be designed reusable? -->
											<tr>
												<td>11.</td>
												<td>Is the code to be designed reusable?</td>
												<td><label><input type="radio" id="rf11_1" name="rf11" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf11_2" name="rf11" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf11_3" name="rf11" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf11_4" name="rf11" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf11_5" name="rf11" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf11_6" name="rf11" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Are conversion and installation included in the design? -->
											<tr>
												<td>12.</td>
												<td>Are conversion and installation included in the
													design?</td>
												<td><label><input type="radio" id="rf12_1" name="rf12" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf12_2" name="rf12" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf12_3" name="rf12" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf12_4" name="rf12" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf12_5" name="rf12" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf12_6" name="rf12" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!-- Is the system designed for multiple installations in different organizations?  -->
											<tr>
												<td>13.</td>
												<td>Is the system designed for multiple installations
													in different organizations?</td>
												<td><label><input type="radio" id="rf13_1" name="rf13" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf13_2" name="rf13" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf13_3" name="rf13" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf13_4" name="rf13" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf13_5" name="rf13" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf13_6" name="rf13" value="5"
														class="minimal-red" /></label></td>
											</tr>
											<!--  Is the application designed to facilitate change and ease of use by the user?  -->
											<tr>
												<td>14.</td>
												<td>Is the application designed to facilitate change
													and ease of use by the user?</td>
												<td><label><input type="radio" id="rf14_1" name="rf14" value="0"
														class="minimal-red" checked /></label></td>
												<td><label><input type="radio" id="rf14_2" name="rf14" value="1"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf14_3" name="rf14" value="2"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf14_4" name="rf14" value="3"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf14_5" name="rf14" value="4"
														class="minimal-red" /></label></td>
												<td><label><input type="radio" id="rf14_6" name="rf14" value="5"
														class="minimal-red" /></label></td>
											</tr>

										</table>
									</div>
									<!-- /.box-body -->
								</div>
								<!-- /.box -->
							</div>

							<!-- RESULT -->
							<div id="step-4" style="height: 200px;width: 100%">
								<h3 class="info-text">Function point with your infomation</h3>
								<div class="row" style="margin-top: 5px; margin-bottom: 10px">
									<div class="col-sm-5 col-sm-offset-1">
										<button class="btn btn-primary btn-flat" style="width: 92px" id="preview" onclick="previewFpPoint();">Preview</button>
										<button class="btn btn-success btn-flat" style="width: 92px" id="save" onclick="saveFpPoint();">Save</button>
										</div>
										
									</div>
                            <!-- Success box -->                            	
                            		<div class="callout callout-info col-md-4">

											<label><a href="ucp-step-decription.html#easy" target="_blank">Wage per hour</a></label> 
												<input type="text" class="form-control" id="wage" name="wageph"
										placeholder="Enter wage per hour ($)..." > 									
										</div>
                            		<div class="callout callout-info col-md-4">
                                        <h4>Total</h4>
                                        <h3 class="info-text" id="totalfp"></h3>
                                    </div>
                                    <div class="callout callout-warning col-md-4">
                                        <h4>Cost of your project with function point</h4>
                                        <h3 class="info-text" id="costfp"></h3>
                                    </div>
                       	 
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
					<small><a href="UCP_document.jsp#history" target="_blank"><i>Read more</i></a></small>
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
					<small><a href="UCP_document.jsp#history" target="_blank"><i>Read more</i></a></small>
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
					<textarea class="form-control"  name="txtDescription" placeholder="Enter ..."></textarea>
					
					<button class="btn bg-purple margin"  >Create</button>
					</form>
				</div>
			</div>
			</div>
		</div>
</body>
<script type="text/javascript" src="resources/js/myjs/function-point.js"></script>
</html>