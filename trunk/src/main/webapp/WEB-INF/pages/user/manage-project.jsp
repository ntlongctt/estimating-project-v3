<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
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


<script type="text/javascript">
            $(function() {
                $("#example1").dataTable();
                $('#example2').dataTable({
                    "bPaginate": true,
                    "bLengthChange": false,
                    "bFilter": false,
                    "bSort": true,
                    "bInfo": true,
                    "bAutoWidth": false
                });
            });
        </script>
</head>
<body class="skin-blue">
<!-- header logo: style can be found in header.less -->
	<jsp:include page="head-banner.jsp" />
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<jsp:include page="left-banner.jsp" />
	<aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Manage your projects
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="#">Forms</a></li>
                        <li class="active">General Elements</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Use case point info.</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                <form role="form">
                                    <div class="box-body">
                                        <div class="form-group">
                                        	<!-- select -->  
                                        	<label>Select project</label>                                    
                                            <select class="form-control">
                                                <option>Project 1</option>
                                                <option>Project 2</option>
                                                <option>Project 3</option>
                                                <option>Project 4</option>
                                                <option>Project 5</option>
                                            </select>
                                        </div>
                                        <!-- select version-->
                                        <div class="form-group">
                                        	<label>Select version of project</label>
                                            <select class="form-control">
                                                <option>Version 1</option>
                                                <option>Version 2</option>
                                                <option>Version 3</option>
                                                <option>Version 4</option>
                                                <option>Version 5</option>
                                            </select>
                                        </div>
                                    </div><!-- /.box-body -->
                                </form>
                            </div><!-- /.box -->


                            <!-- Use case point detail -->
                            <div class="box box-info">
                                <div class="box-body">
                                    <!-- Main content -->
				<div class="panel box ">
					<div class="box-header">
						<h4 class="box-title">
							<a id="ucp-detail" data-toggle="collapse" data-parent="#accordion"	href="#collapseOne1" class="collapsed text-light-blue">Use Case Point Detail</a>
						</h4>
					</div>
					
					<div id="collapseOne1" class="panel-collapse collapse"
						style="height: 0px;">
						<div class="box-body">

							<!-- Use Case Point Weight -->
							<h3 class="box-title">Use Case Point Weight</h3>
							<div class="row">
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Simple:</label> <input type="text" class="form-control"
											placeholder="5">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Average</label> <input type="text" class="form-control"
											placeholder="7">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Complex</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
							</div>

							<h3 class="box-title">Function Point Weight</h3>

							<div class="row">
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Simple:</label> <input type="text" class="form-control"
											placeholder="5">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Average</label> <input type="text" class="form-control"
											placeholder="7">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Complex</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>

							</div>

							<h3 class="box-title">Technical Complexity Factor</h3>
							<div class="row">
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Distributed system:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Distributed system:">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Performance objectives:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Performance objectives:">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>End User efficiency:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="End User efficiency">
									</div>
								</div>
								<!-- Complex Processing -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Complex Processing:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Complex Processing">
									</div>
								</div>
								<!-- Reusable Code -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Reusable Code:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Reusable Code">
									</div>
								</div>
								<!-- Ease of Installation -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Ease of Installation:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Ease of Installation">
									</div>
								</div>
								<!-- Ease of Use -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Ease of Use:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Ease of Use">
									</div>
								</div>
								<!-- Portable -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Portable:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Portable">
									</div>
								</div>
								<!-- Ease of Change -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Ease of Change:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Ease of Change">
									</div>
								</div>
								<!-- Concurrent Use -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Concurrent Use:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Concurrent Use">
									</div>
								</div>
								<!-- Special Security -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Special Security:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Special Security">
									</div>
								</div>
								<!-- Access for Third Parties -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Access for Third Parties:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Access for Third Parties">
									</div>
								</div>
								<!-- Training Needs -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Training Needs:</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Training Needs">
									</div>
								</div>
							</div>
							
							<h3 class="box-title">Inviromental factors calculator</h3>
							<div class="row">
								<!-- Familiar with Development Process -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Familiar Development Process</label> <input
											type="text" class="form-control" id="exampleInputEmail1"
											placeholder="Familiar with Development Process">
									</div>
								</div>
								<!-- Application Experience -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Application Experience</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Application Experience">
									</div>
								</div>
								<!-- Object-Oriented Experience -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Object-Oriented Experience</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Object-Oriented Experience">
									</div>
								</div>
								<!-- Lead Analyst Capability -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Lead Analyst Capability</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Lead Analyst Capability">
									</div>
								</div>
								<!-- Motivation -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Motivation</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Motivation">
									</div>
								</div>
								<!-- Stable Requirements -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Stable Requirements</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Stable Requirements">
									</div>
								</div>
								<!-- Part-time Staff -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Part-time Staff</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											placeholder="Part-time Staff">
									</div>
								</div>
								<!-- Difficult Programming Language -->
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Difficult Programming Language</label> <input
											type="text" class="form-control" id="exampleInputEmail1"
											placeholder="Difficult Programming Language">
									</div>
								</div>
							</div>

							<button class="btn btn-default">Update Version</button>
							<button class="btn btn-default">Create New Verion</button>
						</div>
					</div>
				</div>
				
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->

                        </div><!--/.col (left) -->
                        <!-- right column -->
                        <div class="col-md-6">
                            <!-- general form elements disabled -->
                            <div class="box box-warning">
                                <div class="box-header">
                                    <h3 class="box-title">Function point info.</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <form role="form">
                                    	<!-- select Project-->
                                        <div class="form-group">
                                        	<label>Select your project</label>
                                            <select class="form-control">
                                                <option>Project 1</option>
                                                <option>Project 2</option>
                                                <option>Project 3</option>
                                                <option>Project 4</option>
                                                <option>Project 5</option>
                                            </select>
                                        </div>
                                        <!-- select version-->
                                        <div class="form-group">
                                        	<label>Select version of project</label>
                                            <select class="form-control">
                                                <option>Version 1</option>
                                                <option>Version 2</option>
                                                <option>Version 3</option>
                                                <option>Version 4</option>
                                                <option>Version 5</option>
                                            </select>
                                        </div>
                                    </form>
                                </div><!-- /.box-body -->                               
                            </div><!-- /.box -->
                                                                <!-- Funtion point detail -->
                            <div class="box box-info">
                                <div class="box-body">
                                    
				<div class="panel box ">
					<div class="box-header">
						<h4 class="box-title">
							<a id="fp-detail" data-toggle="collapse" data-parent="#accordion"	href="#collapseOne" class="collapsed text-light-blue">Function Point Detail</a>
						</h4>
					</div>
					
					<div id="collapseOne" class="panel-collapse collapse"
						style="height: 0px;">
						<div class="box-body">

							<!-- User Input -->
							<h3 class="box-title">User Input</h3>
							<div class="row">
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Simple:</label> <input type="text" class="form-control"
											placeholder="5">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Average</label> <input type="text" class="form-control"
											placeholder="7">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Complex</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								
							</div>
							<!-- User out put -->
							<h3 class="box-title">User Output</h3>

							<div class="row">
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Simple:</label> <input type="text" class="form-control"
											placeholder="5">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Average</label> <input type="text" class="form-control"
											placeholder="7">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Complex</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								
							</div>
							<!-- User Inquiries -->
							<h3 class="box-title">User Inquiries</h3>

							<div class="row">
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Simple:</label> <input type="text" class="form-control"
											placeholder="5">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Average</label> <input type="text" class="form-control"
											placeholder="7">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Complex</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								
							</div>
								<!-- Internal logical file -->
							<h3 class="box-title">Internal Logical File</h3>

							<div class="row">
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Simple:</label> <input type="text" class="form-control"
											placeholder="5">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Average</label> <input type="text" class="form-control"
											placeholder="7">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Complex</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								
							</div>
								<!-- External Interface File -->
							<h3 class="box-title">External Interface File</h3>

							<div class="row">
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Simple:</label> <input type="text" class="form-control"
											placeholder="5">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Average</label> <input type="text" class="form-control"
											placeholder="7">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Complex</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>								
							</div>
								<!-- Relative Complexity Adjustment Factor -->
							<h3 class="box-title">Relative Complexity Adjustment Factor</h3>

							<div class="row">
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Requirement for reliable backup and recovery</label> <input type="text" class="form-control"
											placeholder="5">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Requirement for data communication</label> <input type="text" class="form-control"
											placeholder="7">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Extent of distributed processing</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Performance requirements</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Expected operational environment </label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Extent of online data entries</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Extent of multi-screen or multi-operation online data input</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Extent of online updating of master files</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Extent of complex inputs, outputs, online queries and files</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Extent of complex data processing</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Extent that currently developed code can be designed for reuse</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Extent of conversion and installation included in the design</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Extent of multiple installations in an organizationand variety of 
										customer organizations</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Extent of change and focus on ease of use</label> <input type="text" class="form-control"
											placeholder="6">
									</div>
								</div>								
							</div>
														
								<button class="btn btn-default">Update Version</button>
							<button class="btn btn-default">Create New Verion</button>
						</div>
					</div>
				</div>		
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div><!--/.col (right) -->
                    </div>   <!-- /.row -->
                </section><!-- /.content -->
            </aside><!-- /.right-side -->

</body>
</html>