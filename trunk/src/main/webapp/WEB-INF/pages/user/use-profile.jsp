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

<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
<script src="resources/wizard/js/wizard.js"></script>
<script src="resources/js/plugins/metisMenu/metisMenu.min.js"></script>
<script src="resources/wizard/js/jquery.bootstrap.wizard.js"></script>
<!-- InputMask -->
<script src="resourcesjs/plugins/input-mask/jquery.inputmask.js"
	type="text/javascript"></script>
<script
	src="resources/js/plugins/input-mask/jquery.inputmask.date.extensions.js"
	type="text/javascript"></script>
<script
	src="resources/js/plugins/input-mask/jquery.inputmask.extensions.js"
	type="text/javascript"></script>
<!-- date-range-picker -->
<script src="resources/js/plugins/daterangepicker/daterangepicker.js"
	type="text/javascript"></script>
<!-- bootstrap color picker -->
<script
	src="resources/js/plugins/colorpicker/bootstrap-colorpicker.min.js"
	type="text/javascript"></script>
<!-- bootstrap time picker -->
<script
	src="resources/js/plugins/timepicker/bootstrap-timepicker.min.js"
	type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		//Datemask dd/mm/yyyy
		$("#datemask").inputmask("dd/mm/yyyy", {
			"placeholder" : "dd/mm/yyyy"
		});
		//Datemask2 mm/dd/yyyy
		$("#datemask2").inputmask("mm/dd/yyyy", {
			"placeholder" : "mm/dd/yyyy"
		});
		//Money Euro
		$("[data-mask]").inputmask();

		//Date range picker
		$('#reservation').daterangepicker();
		//Date range picker with time picker
		$('#reservationtime').daterangepicker({
			timePicker : true,
			timePickerIncrement : 30,
			format : 'MM/DD/YYYY h:mm A'
		});
		//Date range as a button
		$('#daterange-btn').daterangepicker(
				{
					ranges : {
						'Today' : [ moment(), moment() ],
						'Yesterday' : [ moment().subtract('days', 1),
								moment().subtract('days', 1) ],
						'Last 7 Days' : [ moment().subtract('days', 6),
								moment() ],
						'Last 30 Days' : [ moment().subtract('days', 29),
								moment() ],
						'This Month' : [ moment().startOf('month'),
								moment().endOf('month') ],
						'Last Month' : [
								moment().subtract('month', 1).startOf('month'),
								moment().subtract('month', 1).endOf('month') ]
					},
					startDate : moment().subtract('days', 29),
					endDate : moment()
				},
				function(start, end) {
					$('#reportrange span').html(
							start.format('MMMM D, YYYY') + ' - '
									+ end.format('MMMM D, YYYY'));
				});

		//iCheck for checkbox and radio inputs
		$('input[type="checkbox"].minimal, input[type="radio"].minimal')
				.iCheck({
					checkboxClass : 'icheckbox_minimal',
					radioClass : 'iradio_minimal'
				});
		//Red color scheme for iCheck
		$('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red')
				.iCheck({
					checkboxClass : 'icheckbox_minimal-red',
					radioClass : 'iradio_minimal-red'
				});
		//Flat red color scheme for iCheck
		$('input[type="checkbox"].flat-red, input[type="radio"].flat-red')
				.iCheck({
					checkboxClass : 'icheckbox_flat-red',
					radioClass : 'iradio_flat-red'
				});

		//Colorpicker
		$(".my-colorpicker1").colorpicker();
		//color picker with addon
		$(".my-colorpicker2").colorpicker();

		//Timepicker
		$(".timepicker").timepicker({
			showInputs : false
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
			<section class="content-header"></section>

			<!-- Main content -->
			<section class="content">

				<div class="box box-info">
					<div class="box-header">
						<i class="fa fa-info-circle"></i>
						<h3 class="box-title">Profile</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-6">
								<h4>
									<dl class="dl-horizontal">
										<dt>First name:</dt>
										<dd>
											<input type="text" class="form-control" placeholder="Nguyễn">
										</dd>
										<dt>User name:</dt>
										<dd>
											<input type="text" class="form-control" placeholder="Nguyễn">
										</dd>
										<dt>Phone:</dt>
										<dd>
											<input type="text" class="form-control" placeholder="Nguyễn">
										</dd>
										<dt>Birth date:</dt>
										<dd>
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input type="text" class="form-control"
													data-inputmask="'alias': 'dd/mm/yyyy'" data-mask>
											</div>
										</dd>
										<dt>Company:</dt>
										<dd>
											<input type="text" class="form-control" placeholder="Nguyễn">
										</dd>
									</dl>
								</h4>
							</div>
							<div class="col-md-6">
								<h4>
									<dl class="dl-horizontal">
										<dt>Last name:</dt>
										<dd>
											<input type="text" class="form-control" placeholder="Nguyễn">
										</dd>
										<dt>Password:</dt>
										<dd>
											<input type="text" class="form-control" placeholder="Nguyễn">
										</dd>
										<dt>Mail:</dt>
										<dd>
											<input type="text" class="form-control" placeholder="Nguyễn">
										<dt>Gender:</dt>
										<dd>
											<input type="text" class="form-control" placeholder="Nguyễn">
										</dd>
										<dt>Address:</dt>
										<dd>
											<input type="text" class="form-control" placeholder="Nguyễn">
										</dd>
									</dl>
								</h4>

								<p class="text-right">
									<button class="btn btn-default btn-flat">Submit</button>
								</p>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>

			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>
</html>