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
<link href="resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/ionicons.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/AdminLTE.css" rel="stylesheet"
	type="text/css" />
<link href="resources/font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="resources/wizard/css/gsdk-base.css" rel="stylesheet"
	type="text/css">

<link rel="stylesheet" href="resources/css/normalize.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/jquery.steps.css">
<script src="resources/js/modernizr-2.6.2.min.js"></script>
<script src="resources/js/jquery-1.9.1.min.js"></script>
<script src="resources/js/jquery.cookie-1.3.1.js"></script>
<script src="resources/js/jquery.steps.js"></script>
<link href="resources/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
<link href="resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />

<script	src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
<script src="resources/wizard/js/wizard.js"></script>
<script src="resources/js/plugins/metisMenu/metisMenu.min.js"></script>
<script src="resources/wizard/js/jquery.bootstrap.wizard.js"></script>



<script src="resources/js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>

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

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h3>Detail of Uscase point: <i>project A vsersion 5</i></h3>
			</section>

			<!-- Main content -->
			<section class="content">

				<h2 class="text-info">Infomation:</h2>

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
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Unadjusted Function Weight</label> <input type="text"
											class="form-control" placeholder="4"="">
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
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Unadjusted Function Weight</label> <input type="text"
											class="form-control" placeholder="4"="">
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
										<label>Familiar with Development Process</label> <input
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
				
				
				<div class="panel box ">
					<div class="box-header">
						<h4 class="box-title">
							<a id="fp-detail" data-toggle="collapse" data-parent="#accordion"	href="#collapseOne" class="collapsed text-light-blue">Function Point Detail</a>
						</h4>
					</div>
					
					<div id="collapseOne" class="panel-collapse collapse"
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
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Unadjusted Function Weight</label> <input type="text"
											class="form-control" placeholder="4"="">
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
								<div class="col-sm-5 col-sm-offset-1">
									<div class="form-group">
										<label>Unadjusted Function Weight</label> <input type="text"
											class="form-control" placeholder="4"="">
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
										<label>Familiar with Development Process</label> <input
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
				
				
				
			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>
</html>