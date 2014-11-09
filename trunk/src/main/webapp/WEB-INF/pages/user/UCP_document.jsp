
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<title>Estimating software</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/ionicons.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/AdminLTE.css" rel="stylesheet"
	type="text/css" />

<!-- radio check -->
<!-- iCheck for checkboxes and radio inputs -->
<link href="resources/css/iCheck/_all.css" rel="stylesheet"
	type="text/css" />

<!-- end radio check -->
<link href="resources/font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="resources/wizard/css/gsdk-base.css" rel="stylesheet"
	type="text/css">

<script	src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
<script src="resources/wizard/js/wizard.js"></script>
<script src="resources/js/plugins/metisMenu/metisMenu.min.js"></script>
<script src="resources/wizard/js/jquery.bootstrap.wizard.js"></script>
	
<!-- <script src="resources/wizard/js/bootstrap.min.js"></script> -->

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
			</section>

			<!-- Main content -->
			<section class="content">
				<h2 class="text-info">Use Case Points</h2>
				<p>Use Case Points (UCP) is a software estimation technique used to forecast the software size for software development projects. UCP is used when the Unified Modeling Language (UML) and Rational Unified Process (RUP) methodologies are being used for the software design and development. The concept of UCP is based on the requirements for the system being written using use cases, which is part of the UML set of modeling techniques. The software size (UCP) is calculated based on elements of the system use cases with factoring to account for technical and environmental considerations. The UCP for a project can then be used to calculate the estimated effort for a project. </p>
				<div class="box-body">
					<div class="box-group" id="accordion">
						<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a id="history"  data-toggle="collapse" data-parent="#accordion" href="#collapseOne1" class="collapsed text-light-blue"  >History</a>
								</h4>
							</div>
							<div id="collapseOne1" class="panel-collapse collapse"
								style="height: 0px;">
								<div class="box-body">
								<p >The UCP technique was developed by Gustav Karner in 1993 while employed at what was known at the time as Objectory Systems, which later merged into Rational Software and then IBM. The UCP method was created to solve for estimating the software size of systems that were object oriented. It is based on similar principles as the Function Point (FP) estimation method, but was designed for the specific needs of object oriented systems and system requirements based on use cases.</p></div>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne2" class="collapsed text-light-blue"  >Method</a>
								</h4>
							</div>
							<div id="collapseOne2" class="panel-collapse collapse" style="height: 0px;">
								<div class="box-body">
								<p>The method for determining the size estimate to develop a system is based on a calculation with the following elements:</p>
								<ul>
								<li>Unadjusted Use Case Weight (UUCW) – the point size of the software that accounts for the number and complexity of use cases.</li>
								<li>Unadjusted Actor Weight (UAW) – the point size of the software that accounts for the number and complexity of actors.</li>
								<li>Technical Complexity Factor (TCF) – factor that is used to adjust the size based on technical considerations.</li>
								<li>Environmental Complexity Factor (ECF) – factor that is used to adjust the size based on environmental considerations.</li>
								</ul>
								<p>Once the previous four elements have been calculated, the final size estimate can be calculated. This final number is known as the Use Case Points or UCP for a software development project.<br>The following sections walk through the various calculations to determine the UCP for a project.</p>
								</div>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne3" class="collapsed text-light-blue"  >Unadjusted Use Case Weight (UUCW)</a>
								</h4>
							</div>
							<div id="collapseOne3" class="panel-collapse collapse" style="height: 0px;">
								<div class="box-body">
								<p>The UUCW is one of the factors that contribute to the size of the software being developed. It is calculated based on the number and complexity of the use cases for the system. To find the UUCW for a system, each of the use cases must be identified and classified as Simple, Average or Complex based on the number of transactions the use case contains. Each classification has a predefined weight assigned. Once all use cases have been classified as simple, average or complex, the total weight (UUCW) is determine by summing the corresponding weights for each use case. The following chart shows the different classifications of use cases based on the number of transactions and the weight value assigned for each use case within the classification.</p>
								
								<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Use Case Classification Weight Table</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tbody><tr>
                                            <th>ID</th>
                                            <th>Use Case Classification</th>
                                            <th>No. of Transactions</th>
                                            <th>Weight</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Simple</td>
                                            <td>1 to 3 transactions</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Average</td>
                                            <td>4 to 7 transactions</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Complex</td>
                                            <td>8 or more transactions</td>
                                            <td>15</td>
                                        </tr>
                                    </tbody></table>
                             </div><!-- /.box-body -->
                            </div>	
							</div>
								 <p>UUCW = (Total No. of Simple Use Cases x 5) + (Total No. Average Use Case x 10) + (Total No. Complex Use Cases x 15)</p>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
							<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse4" class="collapsed text-light-blue"  >Unadjusted Actor Weight (UAW)</a>
								</h4>
							</div>
							<div id="collapse4" class="panel-collapse collapse">
								<div class="box-body">
								<p>The UAW is another factor that contributes to the size of the software being developed. It is calculated based on the number and complexity of the actors for the system. Similar to finding the UUCW, each of the actors must be identified and classified as Simple, Average or Complex based on the type of actor. Each classification also has a predefined weight assigned. The UAW is the total of the weights for each of the actors. The following chart shows the different classifications of actors and the weight value assigned.</p>
								<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Actor Classification Weight Table</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tbody><tr>
                                            <th>ID</th>
                                            <th>Actor Classification</th>
                                            <th>Type of Actor</th>
                                            <th>Weight</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Simple</td>
                                            <td>External system that must interact with the system using a well-defined API</td>
                                            <td>1</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Average</td>
                                            <td>External system that must interact with the system using standard communication protocols (e.g. TCP/IP, FTP, HTTP, database)</td>
                                            <td>2</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Complex</td>
                                            <td>Human actor using a GUI application interface</td>
                                            <td>3</td>
                                        </tr>
                                    </tbody></table>
                             </div><!-- /.box-body -->
                            </div>	
                            <p>UAW = (Total No. of Simple actors x 1) + (Total No. Average actors x 2) + (Total No. Complex actors x 3)</p>
								</div>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse5" class="collapsed text-light-blue"  >Technical Complexity Factor (TCF)</a>
								</h4>
							</div>
							<div id="collapse5" class="panel-collapse collapse" style="height: auto;">
								<div class="box-body">
								<p>The TCF is one of the factors applied to the estimated size of the software in order to account for technical considerations of the system. It is determined by assigning a score between 0 (factor is irrelevant) and 5 (factor is essential) to each of the 13 technical factors listed in the table below. This score is then multiplied by the defined weighted value for each factor. The total of all calculated values is the technical factor (TF). The TF is then used to compute the TCF with the following formula:</p><br>
								<p>TCF = 0.6 + (TF/100)</p>
								
								<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Actor Classification Weight Table</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tbody><tr>
                                            <th>ID</th>
                                            <th>Factor</th>
                                            <th>Description</th>
                                            <th>Weight</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>T1</td>
                                            <td>Distributed system</td>
                                            <td>2.0</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>T2</td>
                                            <td>Response time/performance objectives</td>
                                            <td>1.0</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>T3</td>
                                            <td>End-user efficiency</td>
                                            <td>1.0</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>T4</td>
                                            <td>Internal processing complexity</td>
                                            <td>1.0</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>T5</td>
                                            <td>Code reusability</td>
                                            <td>1.0</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>T6</td>
                                            <td>Easy to install</td>
                                            <td>0.5</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>T7</td>
                                            <td>Easy to use</td>
                                            <td>0.5</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>T8</td>
                                            <td>Portability to other platforms</td>
                                            <td>2.0</td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>T9</td>
                                            <td>System maintenance</td>
                                            <td>1.0</td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>T10</td>
                                            <td>Concurrent/parallel processing</td>
                                            <td>1.0</td>
                                        </tr>
                                        <tr>
                                            <td>11</td>
                                            <td>T11</td>
                                            <td>Security features</td>
                                            <td>1.0</td>
                                        </tr>
                                        <tr>
                                            <td>12</td>
                                            <td>T12</td>
                                            <td>End-user efficiency</td>
                                            <td>1.0</td>
                                        </tr>
                                         <tr>
                                            <td>13</td>
                                            <td>T13</td>
                                            <td>End user training</td>
                                            <td>1.0</td>
                                        </tr>
                                    </tbody></table>
                             </div><!-- /.box-body -->
                            </div>	
								
								</div>
							</div>
						</div>
						<div class="panel box  ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse6" class="collapsed text-light-blue"  >Environmental Complexity Factor (ECF)</a></h4>
							</div>
							<div id="collapse6" class="panel-collapse collapse"
								style="height: 0px;">
								<div class="box-body">
								<p>The ECF is another factor applied to the estimated size of the software in order to account for environmental considerations of the system. It is determined by assigning a score between 0 (no experience) and 5 (expert) to each of the 8 environmental factors listed in the table below. This score is then multiplied by the defined weighted value for each factor. The total of all calculated values is the environment factor (EF). The EF is then used to compute the ECF with the following formula:</p><br>
								<p>ECF = 1.4 + (-0.03 x EF)</p>
								
								<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Actor Classification Weight Table</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tbody><tr>
                                            <th>ID</th>
                                            <th>Factor</th>
                                            <th>Description</th>
                                            <th>Weight</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>E1</td>
                                            <td>Familiarity with development process used</td>
                                            <td>1.5</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>E2</td>
                                            <td>Application experience</td>
                                            <td>0.5</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>E3</td>
                                            <td>Object-oriented experience of team</td>
                                            <td>1.0</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>E4</td>
                                            <td>Lead analyst capability</td>
                                            <td>0.5</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>E5</td>
                                            <td>Motivation of the team	</td>
                                            <td>1.0</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>E6</td>
                                            <td>Stability of requirements</td>
                                            <td>2.0</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>E7</td>
                                            <td>Part-time staff</td>
                                            <td>-1.0</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>E8</td>
                                            <td>Difficult programming language</td>
                                            <td>-1.0</td>
                                        </tr>
                                        
                                    </tbody></table>
                             	</div><!-- /.box-body -->
                            	</div>	
							
							</div>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne6" class="collapsed text-light-blue"  >Use Case Points (UCP)</a>
								</h4>
							</div>
							<div id="collapseOne6" class="panel-collapse collapse"
								style="height: 0px;">
								<div class="box-body">
								<p >Finally the UCP can be calculated once the unadjusted project size (UUCW and UAW), technical factor (TCF) and environmental factor (ECF) have been determined. The UCP is calculated based on the following formula:</p><br>
								<p>UCP = (UUCW + UAW) x TCF x ECF</p>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>
</html>