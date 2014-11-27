<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<meta name="viewport" content="width=device-width" />
<title>Estimating software</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />

<link href="resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- DATA TABLES -->
<link href="resources/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->

<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>

<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>

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
	
		<jsp:include page="left-banner.jsp" />
	<aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Manage your projects
                    </h1>
                </section>

                <!-- Main content -->
                <section class="content">
								
						<div class="box">
                            <div class="box-header">
                                <h3 class="box-title">List project</h3>                                    
                            </div>
                            <div class="box-body table-responsive">
                                <table id="projectTable" class="table table-bordered table-striped">
                                    <thead style="background-color: #3c8dbc; color: white">
                                        <tr>
                                            <th>Name</th>
                                            <th>Type</th>
                                            <th>Description</th>
                                            <th style="width: 100px">View Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>                                   
                                    </tbody>
                                </table>
                            </div>
                        </div>
            <div class="col-md-12">
                            <!-- Custom Tabs (Pulled to the right) -->
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs pull-right">
                        <li class="active"><a href="#tab_1-1" data-toggle="tab">Use case Point</a></li>
                        <li ><a href="#tab_2-2" data-toggle="tab">Function Point</a></li>
                        <li class="pull-left header" id="projectName"><a class="fa fa-th"></a> </li>
                    </ul>
                    <div class="tab-content">
                        <!-- Use case Point -->
                        <div class="tab-pane active" id="tab_1-1">
                            <div class=	"panel box ">
						<div class="box-header">
							<div class="box-title" style="width: 600px" >
							<h3>Use Case Point Detail</h3>
								<hr>
								<p style="font-size: 15px!important;">Select version of project</p>
								<!-- select version-->
		                        <select class="form-control" id="selectUCP">
		                                                <option>Version 1</option>
		                                                <option>Version 2</option>
		                                                <option>Version 3</option>
		                                                <option>Version 4</option>
		                                                <option>Version 5</option>
	                                            </select>
		                        <input type="button" class="btn btn-primary btn-flat" value="Update version" style="margin-top: 10px">
		                        <input type="button" class="btn btn-success btn-flat" value="Create new version" style="margin-top: 10px">
							</div>
						</div>
					
					<div >
						<div class="box-body" style="margin-top: -30px">
								<div class="box-body">
									<table>
										<tr>
											<td style="width: 150px"><label>Total point</label> <input type="text" class="form-control" style="width: 100px" placeholder="5" readonly="true"></td>
											<td style="width: 150px"><label>Total hour</label> <input type="text" class="form-control" style="width: 100px" placeholder="5" readonly="true"></td>
											<td style="width: 150px"><label>Cost </label> <input type="text" class="form-control" placeholder="7" style="width: 100px" readonly="true"></td>
										</tr>
									</table>
                                </div>
<table class="table table-striped table-hover">
<tbody>
		<tr>
			<td style="text-align: left; font-weight: bold; color: black">Use Case Point Weight</td>
			<td style="width: 70%">
				<div id="panelUCPWeight" style="text-align: left; display: none; margin-top: 10px;">
					 <table style="width: 600px">
					 	<tr class="info">
					 		<th>Simple: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
					 		<th>Average: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
					 		<th>Complex: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
					 	</tr>			
					</table>
				</div>
			</td>
			<td style="text-align: right"><a id="editUCPWeight">Edit</a>
			</td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">Function Point Weight</td>
			<td style="width: 70%">
					<div id="panelFPWeigth" style="text-align: left; display: none; margin-top: 10px;">
						 <table  style="width: 600px">
						 	<tr class="info">
						 		<th>Simple: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Average: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Complex: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 	</tr>			
						 </table>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editFPWeigth">Edit</a></td>
		</tr>

		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">Technical Complexity Factor</td>
			<td style="width: 70%">
					<div id="panelTCF" style="text-align: left; display: none; margin-top: 10px;">
						<table  style="width: 600px">
							<tr class="info">
								<th>Distributed system:</th>
								<th>Performance objectives:</th>
								<th>End User efficiency:</th>
							</tr>
							<tr>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
							</tr>
							<tr class="info">
								<th>Complex Processing:</th>
								<th>Reusable Code:</th>
								<th>Ease of Installation:</th>
							</tr>
							<tr>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
							</tr>
							<tr class="info">
								<th>Ease of Use:</th>
								<th>Portable:</th>
								<th>Ease of Change:</th>
							</tr>		
							<tr>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
							</tr>
							<tr class="info">
								<th>Concurrent Use:</th>
								<th>Special Security:</th>
								<th>Access for Third Parties:></th>
							</tr>	
							<tr>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
							</tr>	
							<tr>
								<th>Training Needs:<input type="text" style="width: 40px; height: 20px" placeholder="7"></th>

							</tr>
						</table>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editTCF">Edit</a></td>
		</tr>
		
		<tr>
			<td	style="text-align: left; font-weight: bold; color: black; width: 20%">Inviromental factors calculator</td>
			<td style="width: 70%">
					<div id="panelIFC" style="text-align: left; display: none; margin-top: 10px;">
						<div class="" style="width: 320px;">
							<table style="width: 600px" >
								<tr class="info">
									<th>Familiar Development Process:</th>
									<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
									<th>Application Experience:</th>
									<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								</tr>
								<tr class="info">
									<th>Object-Oriented Experience:</th>
									<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
									<th>Lead Analyst Capability:</th>
									<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								</tr>
								<tr class="info">
									<th>Motivation:</th>
									<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
									<th>Stable Requirements:</th>
									<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								</tr>
								<tr class="info">
									<th>Part-time Staff:</th>
									<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
									<th>Difficult Programming Language:</th>
									<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								</tr>
							</table>
						</div>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editIFC">Edit</a></td>
		</tr>
		
		<tr>
			<td	style="text-align: left; font-weight: bold; color: black; width: 20%">Payment</td>
			<td style="width: 70%">		
					<div id="panelPayment" style="text-align: left; display: none; margin-top: 10px;">
						<div class="" style="width: 320px;">
							<label>Wage per hour</label> <input type="text" class="form-control"placeholder="5">
						</div>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editPayment">Edit</a></td>
		</tr>
</tbody>
</table>
						</div>
					</div>
		</div>
                               </div>
                               <!-- Funtion, Point -->
                               <div class="tab-pane" id="tab_2-2">
                            <div class=	"panel box ">
						<div class="box-header">
							<div class="box-title" style="width: 600px" >
							<h3>Function Point Detail</h3>
								<hr>
								<p style="font-size: 15px!important;">Select version of project</p>
								<!-- select version-->
		                        <select class="form-control" id="selectFP">
		                                                <option>Version 1</option>
		                                                <option>Version 2</option>
		                                                <option>Version 3</option>
		                                                <option>Version 4</option>
		                                                <option>Version 5</option>
	                                            </select>
		                        <input type="button" class="btn btn-primary btn-flat" value="Update version" style="margin-top: 10px">
		                        <input type="button" class="btn btn-success btn-flat" value="Create new version" style="margin-top: 10px">
							</div>
						</div>
					
					<div >
						<div class="box-body" style="margin-top: -30px">
								<div class="box-body">
									<table>
										<tr>
											<td style="width: 150px"><label>Total point</label> <input type="text" class="form-control" style="width: 100px" placeholder="5" readonly="true"></td>
											<td style="width: 150px"><label>Total hour</label> <input type="text" class="form-control" style="width: 100px" placeholder="5" readonly="true"></td>
											<td style="width: 150px"><label>Cost </label> <input type="text" class="form-control" placeholder="7" style="width: 100px" readonly="true"></td>
										</tr>
									</table>
                                </div>
<table class="table table-striped table-hover">
<tbody>
		<tr>
			<td style="text-align: left; font-weight: bold; color: black">User Input</td>
			<td style="width: 70%">
				<div id="panelUserInput" style="text-align: left; display: none; margin-top: 10px;">
					 <table style="width: 600px">
					 	<tr class="info">
					 		<th>Simple: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
					 		<th>Average: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
					 		<th>Complex: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
					 	</tr>			
					</table>
				</div>
			</td>
			<td style="text-align: right"><a id="editUserInput">Edit</a>
			</td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">User Output</td>
			<td style="width: 70%">
					<div id="panelUserOutput" style="text-align: left; display: none; margin-top: 10px;">
						 <table  style="width: 600px">
						 	<tr class="info">
						 		<th>Simple: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Average: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Complex: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 	</tr>			
						 </table>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editUserOuput">Edit</a></td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">User Online Query</td>
			<td style="width: 70%">
					<div id="panelUserOnlineQuery" style="text-align: left; display: none; margin-top: 10px;">
						 <table  style="width: 600px">
						 	<tr class="info">
						 		<th>Simple: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Average: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Complex: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 	</tr>			
						 </table>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editUserOnlineQuery">Edit</a></td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">User Output</td>
			<td style="width: 70%">
					<div id="panelInternalLogicalFile" style="text-align: left; display: none; margin-top: 10px;">
						 <table  style="width: 600px">
						 	<tr class="info">
						 		<th>Simple: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Average: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Complex: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 	</tr>			
						 </table>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editInternalLogicalFile">Edit</a></td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">External Interface File</td>
			<td style="width: 70%">
					<div id="panelExternalInterfaceFile" style="text-align: left; display: none; margin-top: 10px;">
						 <table  style="width: 600px">
						 	<tr class="info">
						 		<th>Simple: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Average: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Complex: <input type="text" style="width: 40px; height: 20px" placeholder="7"></th>
						 	</tr>			
						 </table>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editExternalInterfaceFile">Edit</a></td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">Relative Complexity Adjustment Factor</td>
			<td style="width: 70%">
					<div id="panelRCAF" style="text-align: left; display: none; margin-top: 10px;">
						 <table  class="table">
						 	<tr class="info">
								<th>Requirement for reliable backup and recovery:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								<th>Requirement for data communication:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Extent of distributed processing:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								<th>Performance requirements:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Expected operational environment:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								<th>Extent of online data entries:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Extent of multi-screen or multi-operation online data input:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"data-inputmask="'mask': '5'"></th>
								<th>Extent of online updating of master files:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Extent of complex inputs, outputs, online queries and files:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"data-inputmask="'mask': '5'"></th>
								<th>Extent of complex data processing:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Extent that currently developed code can be designed for reuse:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"data-inputmask="'mask': '5'"></th>
								<th>Extent of conversion and installation included in the design:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Extent of multiple installations in an organizationand variety of 
								customer organizations:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"data-inputmask="'mask': '5'"></th>
								<th>Extent of change and focus on ease of use:</th>
								<th><input type="text" style="width: 40px; height: 20px" placeholder="7"data-inputmask="'mask': '5'"></th>
							</tr>		
						 </table>
						 </div>
					</td>
			<td style="text-align: right; width: 10%"><a id="editRCAF">Edit</a></td>
		</tr>
			
		<tr>
			<td	style="text-align: left; font-weight: bold; color: black; width: 20%">Payment</td>
			<td style="width: 70%">		
					<div id="panelPaymentFP" style="text-align: left; display: none; margin-top: 10px;">
						<div class="" style="width: 320px;">
							<label>Wage per hour</label> <input type="text" class="form-control"placeholder="5">
						</div>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editPaymentFP">Edit</a></td>
		</tr>
</tbody>
</table>
						</div>
					</div>
		</div>
                               </div>
  </div>
    </div>
</div>  
                </section>
            </aside>
<script src="resources/js/myjs/manage-project.js" type="text/javascript"></script>

</body>
</html>