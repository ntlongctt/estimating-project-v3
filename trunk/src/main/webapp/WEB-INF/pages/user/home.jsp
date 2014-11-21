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
<link href="resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="resources/css/normalize.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/jquery.steps.css">
<script src="resources/js/modernizr-2.6.2.min.js"></script>
<script src="resources/js/jquery-1.9.1.min.js"></script>
<script src="resources/js/jquery.cookie-1.3.1.js"></script>
<script src="resources/js/jquery.steps.js"></script>

<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>




</head>
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
	<jsp:include page="head-banner.jsp" />
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<jsp:include page="left-banner.jsp" />

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header"></section>

			<!-- Main content -->
			<section class="content">





				<div class="alert alert-info alert-dismissable">
					<i class="fa fa-info"></i>
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">×</button>
					<a href="upgrade_user.html"><b>Opportunity</b> Sale of 50% to
						VIP member</a>
				</div>

				<div class="row">
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-aqua">
							<div class="inner">
								<h4>15</h4>
								<p>
									<b>Projects</b>
								</p>
							</div>
							<div class="icon">
								<i class="ion ion-bag"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-green">
							<div class="inner">
								<h4>53</h4>
								<p>Version</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-yellow">
							<div class="inner">
								<h4>44,120,000 VNS</h4>
								<p>Largest project coat</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-red">
							<div class="inner">
								<h4>65</h4>
								<p>Pr</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
				</div>

				<section class="col-lg-6 connectedSortable ui-sortable">
					<div class="box box-primary">
						<div class="box-header" style="cursor: move;">
							<!-- tools box -->
							<div class="pull-right box-tools">
								<button class="btn btn-primary btn-sm pull-right"
									data-widget="collapse" data-toggle="tooltip" title=""
									style="margin-right: 5px;" data-original-title="Collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
							<!-- /. tools -->

							<i class="fa fa-map-marker"></i>
							<h3 class="box-title">Top 5 Use case Point</h3>
						</div>
						<div class="box-body no-padding" style="display: block;">
							<div class="table-responsive">
								<!-- .table - Uses sparkline charts-->
								<table class="table table-striped">
									<tbody>
										<tr>
											<th>Name</th>
											<th>Version</th>
											<th>Point</th>
											<th>Coat</th>
										</tr>
										<tr>
											<td><a href="#">USA</a></td>
											<td><div id="sparkline-1">
													<canvas width="54" height="20"
														style="display: inline-block; width: 54px; height: 20px; vertical-align: top;"></canvas>
												</div></td>
											<td>209</td>
											<td>239</td>
										</tr>
										<tr>
											<td><a href="#">India</a></td>
											<td><div id="sparkline-2">
													<canvas width="54" height="20"
														style="display: inline-block; width: 54px; height: 20px; vertical-align: top;"></canvas>
												</div></td>
											<td>131</td>
											<td>958</td>
										</tr>
										<tr>
											<td><a href="#">Britain</a></td>
											<td><div id="sparkline-3">
													<canvas width="54" height="20"
														style="display: inline-block; width: 54px; height: 20px; vertical-align: top;"></canvas>
												</div></td>
											<td>19</td>
											<td>417</td>
										</tr>
										<tr>
											<td><a href="#">Brazil</a></td>
											<td><div id="sparkline-4">
													<canvas width="54" height="20"
														style="display: inline-block; width: 54px; height: 20px; vertical-align: top;"></canvas>
												</div></td>
											<td>109</td>
											<td>476</td>
										</tr>

									</tbody>
								</table>
								<!-- /.table -->
							</div>
						</div>
						<!-- /.box-body-->
						<div class="box-footer" style="display: block;">
							<button class="btn btn-info">
								<i class="fa fa-download"></i> Generate PDF
							</button>
							<button class="btn btn-warning">
								<i class="fa fa-bug"></i> Give Feedback
							</button>
						</div>
					</div>
				</section>
				
				<section class="col-lg-6 connectedSortable ui-sortable">
					<div class="box box-primary">
						<div class="box-header" style="cursor: move;">
							<!-- tools box -->
							<div class="pull-right box-tools">
								<button class="btn btn-primary btn-sm pull-right"
									data-widget="collapse" data-toggle="tooltip" title=""
									style="margin-right: 5px;" data-original-title="Collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
							<!-- /. tools -->

							<i class="fa fa-map-marker"></i>
							<h3 class="box-title">Top 5 Function Point</h3>
						</div>
						<div class="box-body no-padding" style="display: block;">
							<div class="table-responsive">
								<!-- .table - Uses sparkline charts-->
								<table class="table table-striped">
									<tbody>
										<tr>
											<th>Name</th>
											<th>Version</th>
											<th>Point</th>
											<th>Coat</th>
										</tr>
										<tr>
											<td><a href="#">USA</a></td>
											<td><div id="sparkline-1">
													<canvas width="54" height="20"
														style="display: inline-block; width: 54px; height: 20px; vertical-align: top;"></canvas>
												</div></td>
											<td>209</td>
											<td>239</td>
										</tr>
										<tr>
											<td><a href="#">India</a></td>
											<td><div id="sparkline-2">
													<canvas width="54" height="20"
														style="display: inline-block; width: 54px; height: 20px; vertical-align: top;"></canvas>
												</div></td>
											<td>131</td>
											<td>958</td>
										</tr>
										<tr>
											<td><a href="#">Britain</a></td>
											<td><div id="sparkline-3">
													<canvas width="54" height="20"
														style="display: inline-block; width: 54px; height: 20px; vertical-align: top;"></canvas>
												</div></td>
											<td>19</td>
											<td>417</td>
										</tr>
										<tr>
											<td><a href="#">Brazil</a></td>
											<td><div id="sparkline-4">
													<canvas width="54" height="20"
														style="display: inline-block; width: 54px; height: 20px; vertical-align: top;"></canvas>
												</div></td>
											<td>109</td>
											<td>476</td>
										</tr>

									</tbody>
								</table>
								<!-- /.table -->
							</div>
						</div>
						<!-- /.box-body-->
						<div class="box-footer" style="display: block;">
							<button class="btn btn-info">
								<i class="fa fa-download"></i> Generate PDF
							</button>
							<button class="btn btn-warning">
								<i class="fa fa-bug"></i> Give Feedback
							</button>
						</div>
					</div>
				</section>



			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>
</html>