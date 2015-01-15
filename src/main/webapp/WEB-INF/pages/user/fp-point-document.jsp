
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
				<h2 class="text-info">Function Points</h2>
				<p>A function point is a unit of measurement to express the amount of business functionality an information system (as a product) provides to a user. Function points measure software size. The cost (in dollars or hours) of a single unit is calculated from past projects.</p>
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
								<p >Function points were defined in 1979 in Measuring Application Development Productivity by Allan Albrecht at IBM. The functional user requirements of the software are identified and each one is categorized into one of five types: outputs, inquiries, inputs, internal files, and external interfaces.
									</p></div>
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
								<li>User Inputs.</li>
								<li>User Outputs.</li>
								<li>User Inquiries.</li>
								<li>Internal Logical Files.</li>
								<li>External Interface Files.</li>
								<li>Relative Complexity Adjustment Factor.</li>
								</ul>
								<p>Weighted factors are applied to each components according to their complexity : simple, average, complex.</p>
								<!--<p>Once the previous four elements have been calculated, the final size estimate can be calculated. This final number is known as the Use Case Points or UCP for a software development project.<br>The following sections walk through the various calculations to determine the UCP for a project.</p>-->
								</div>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne3" class="collapsed text-light-blue"  >User Inputs</a>
								</h4>
							</div>
							<div id="collapseOne3" class="panel-collapse collapse" style="height: 0px;">
								<div class="box-body">
								<p>Count each unique user data or user control input type that enters the external boundary 
								of the application being measured, and adds, changes, deletes or otherwise alters data 
								(e.g. assign, transfer, add, update) in an external logical file. Also count control 
								information that enters the application boundary and assures compliance with business 
								function specified by the user. An external input should be considered unique if the 
								external logical design requires processing logic different from other external inputs.</p>
								<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">User Inputs Weight Table</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tbody><tr>
                                            <th>ID</th>
                                            <th>Complexity</th>
                                            <th>Weight</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Simple</td>
                                            <td>3</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Average</td>
                                            <td>4</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Complex</td>
                                            <td>6</td>
                                            <td></td>
                                        </tr>
                                    </tbody></table>
                             </div><!-- /.box-body -->
                            </div>	
							</div>
								 <p>UIP = (No.of Simple)*3 + (No. of Average)*4 + (No. of Complex)*6</p>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne4" class="collapsed text-light-blue"  >User Outputs</a>
								</h4>
							</div>
							<div id="collapseOne4" class="panel-collapse collapse" style="height: 0px;">
								<div class="box-body">
								<p>Count each unique user data or control data that leaves the external boundary of the 
								application being measured. An external output should be considered unique if it has 
								different data, or if the external design requires processing logic different from other 
								external outputs. External outputs often consist of reports, output files sent to other 
								applications, or messages to the user.</p>
								<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">User Outputs Weight Table</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tbody><tr>
                                            <th>ID</th>
                                            <th>Complexity</th>
                                            <th>Weight</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Simple</td>
                                            <td>4</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Average</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Complex</td>
                                            <td>7</td>
                                            <td></td>
                                        </tr>
                                    </tbody></table>
                             </div><!-- /.box-body -->
                            </div>	
							</div>
								 <p>UOP = (No.of Simple)*4 + (No. of Average)*5 + (No. of Complex)*7</p>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne5" class="collapsed text-light-blue"  >User Inquiries</a>
								</h4>
							</div>
							<div id="collapseOne5" class="panel-collapse collapse" style="height: 0px;">
								<div class="box-body">
								<p>Count each unique input/output combination, where an input causes and generates an 
								output, as an external inquiry. An external inquiry should be considered unique if it has 
								different data elements from other external inquiry types in its output part, or if the 
								external design requires a processing logic different from other external inquiries.</p>
								<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">User Inquiries Weight Table</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tbody><tr>
                                            <th>ID</th>
                                            <th>Complexity</th>
                                            <th>Weight</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Simple</td>
                                            <td>3</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Average</td>
                                            <td>4</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Complex</td>
                                            <td>6</td>
                                            <td></td>
                                        </tr>
                                    </tbody></table>
                             </div><!-- /.box-body -->
                            </div>	
							</div>
								 <p>UQP = (No.of Simple)*3 + (No. of Average)*4 + (No. of Complex)*6</p>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne6" class="collapsed text-light-blue"  >Internal Logical Files</a>
								</h4>
							</div>
							<div id="collapseOne6" class="panel-collapse collapse" style="height: 0px;">
								<div class="box-body">
								<p>Each major logical group of user data or application control information is one ILF. 
								Include each logical file, or within a database, each logical group of data from the 
								viewpoint of the user that is generated, used or maintained by the application. Count each 
								logical group of data as viewed by the user and as defined by requirements analysis or 
								data design rather than the actual physical files. Do not include files not accessible by the 
								user through external output or inquiry and that are not independently maintained.</p>
								<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Internal Logical Files Weight Table</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tbody><tr>
                                            <th>ID</th>
                                            <th>Complexity</th>
                                            <th>Weight</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Simple</td>
                                            <td>7</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Average</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Complex</td>
                                            <td>15</td>
                                            <td></td>
                                        </tr>
                                    </tbody></table>
                             </div><!-- /.box-body -->
                            </div>	
							</div>
								 <p>ILFP = (No.of Simple)*7 + (No. of Average)*10 + (No. of Complex)*15</p>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne7" class="collapsed text-light-blue"  >External Interface Files</a>
								</h4>
							</div>
							<div id="collapseOne7" class="panel-collapse collapse" style="height: 0px;">
								<div class="box-body">
								<p>Count each major logical group of user data or control information used by the 
								application. This information must be maintained, however, by another application. 
								Include each logical file or logical group of data from the viewpoint of the user. Count 
								each major logical group of user data or control information that is extracted by the 
								application from another application as an external interface file. The extract will not 
								result in an update to any internal logical files. If an update occurs, count an EI not an 
								EIF.</p>
								<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">External Interface Files Weight Table</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tbody><tr>
                                            <th>ID</th>
                                            <th>Complexity</th>
                                            <th>Weight</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Simple</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Average</td>
                                            <td>7</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Complex</td>
                                            <td>10</td>
                                            <td></td>
                                        </tr>
                                    </tbody></table>
                             </div><!-- /.box-body -->
                            </div>	
							</div>
								 <p>EIFP = (No.of Simple)*5 + (No. of Average)*7 + (No. of Complex)*10</p>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
							<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse4" class="collapsed text-light-blue"  >Unadjusted Function Points (UFP)</a>
								</h4>
							</div>
							<div id="collapse4" class="panel-collapse collapse">
								<div class="box-body">
								<p>Total Unadjusted Function Points</p>
								<div class="box">
                             </div><!-- /.box-body -->
                            </div>	
                            <p>UFP = UIP + UOP + UQP + ILFP + EIFP.</p>
								</div>
							</div>
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne8" class="collapsed text-light-blue">Relative Complexity Adjustment Factor</a>
								</h4>
							</div>
							<div id="collapseOne8" class="panel-collapse collapse" style="height: 0px;">
								<div class="box-body">
								<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Relative Complexity Adjusment Factor Table</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tbody><tr>
                                            <th>ID</th>
                                            <th>Subject</th>
                                            <th>Grade</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Does with system require reliable backup and recovery?</td>
                                            <td>0-5</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Are data communications required?</td>
                                            <td>0-5</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Are there distributed processing functions?</td>
                                            <td>0-5</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Is performance critical?</td>
                                            <td>0-5</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Will the system run in an existing, heavily utilized operational environment?</td>
                                            <td>0-5</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>Does the system require on-line data entry?</td>
                                            <td>0-5</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>Does the on-line data entry require the input transaction to be built over multiple screens or operations?</td>
                                            <td>0-5</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>Are the master files updated on-line?</td>
                                            <td>0-5</td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>Are the inputs, outputs,files or inquiries complex?</td>
                                            <td>0-5</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>Is the internal processing complex?</td>
                                            <td>0-5</td>
                                        </tr>
                                        <tr>
                                            <td>11</td>
                                            <td>Is the code designed to be reusable?</td>
                                            <td>0-5</td>
                                        </tr>
                                        <tr>
                                            <td>12</td>
                                            <td>Are conversion and installation included in the design?</td>
                                            <td>0-5</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>13</td>
                                            <td>Is the system designed for multiple installations in different organizations?</td>
                                            <td>0-5</td>
                                        </tr>
                                        <tr>
                                            <td>14</td>
                                            <td>Is the application designed to facilitate change and ease of use by the user?</td>
                                            <td>0-5</td>
                                        </tr>
                                    </tbody></table>
                                <p>Rate each factor on a scale of 0 to 5:</p>
								<ul>
								<li>0 = No influence</li>
								<li>1 = Incidental</li>
								<li>2 = Moderate</li>
								<li>3 = Average</li>
								<li>4 = Significant</li>
								<li>5 = Essential</li>
								</ul>
                             </div><!-- /.box-body -->
                            </div>	
						</div>
						<div class="panel box ">
							<div class="box-header">
								<h4 class="box-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne10" class="collapsed text-light-blue"  >Total Function Points (FP)</a>
								</h4>
							</div>
							<div id="collapseOne10" class="panel-collapse collapse"
								style="height: 0px;">
								<div class="box-body">
								<p >Finally the FP can be calculated once the unadjusted function point and total of RCAF. The FP is calculated based on the following formula:</p><br>
								<p>FP = [0.65 + (0.01 * RCAF)] * UFP.</p>
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