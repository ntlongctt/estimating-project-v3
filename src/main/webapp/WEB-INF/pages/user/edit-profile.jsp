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

<!-- <link href="resources/wizard/css/smart_wizard.css" rel="stylesheet" type="text/css"> -->
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
			<section class="content-header"></section>

			<!-- Main content -->
			<section class="content">

				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-calendar"></i>
					</div>
					<input type="text" class="form-control"
						data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
				</div>
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
										<dt>Full name:</dt>
										<dd>
											<input type="text" class="form-control" id="fullname">
										</dd>
										<dt>User name:</dt>
										<dd>
											<input type="text" class="form-control" id="username">
										</dd>
										<dt>Phone:</dt>
										<dd>
											<input type="text" class="form-control" id="phone">
										</dd>
									</dl>
								</h4>
							</div>
							<div class="col-md-6">
								<h4>
									<dl class="dl-horizontal">
										<dt>Email:</dt>
										<dd>
											<input type="text" class="form-control" id="mail">
										</dd>
										<dd>
											<input type="text" class="form-control" id="mail">
										</dd>
										<dt>Password:</dt>
										<dd>
											<input type="text" class="form-control" id="pass">
										</dd>
										<dt>Address:</dt>
										<dd>
											<input type="text" class="form-control" id="address">
										</dd>
									</dl>
								</h4>

								<p class="text-right">
									<button class="btn btn-default btn-flat" ><a href="edit-profile.jsp">Edit profile</a></button>
									
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
 <script type="text/javascript">
            $(function() {
                //Datemask dd/mm/yyyy
                $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
                //Datemask2 mm/dd/yyyy
                $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
                //Money Euro
                $("[data-mask]").inputmask();

                //Date range picker
                $('#reservation').daterangepicker();
                //Date range picker with time picker
                $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
                //Date range as a button
                $('#daterange-btn').daterangepicker(
                        {
                            ranges: {
                                'Today': [moment(), moment()],
                                'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                                'Last 7 Days': [moment().subtract('days', 6), moment()],
                                'Last 30 Days': [moment().subtract('days', 29), moment()],
                                'This Month': [moment().startOf('month'), moment().endOf('month')],
                                'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                            },
                            startDate: moment().subtract('days', 29),
                            endDate: moment()
                        },
                function(start, end) {
                    $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                }
                );

                //iCheck for checkbox and radio inputs
                $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal',
                    radioClass: 'iradio_minimal'
                });
                //Red color scheme for iCheck
                $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                    checkboxClass: 'icheckbox_minimal-red',
                    radioClass: 'iradio_minimal-red'
                });
                //Flat red color scheme for iCheck
                $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                    checkboxClass: 'icheckbox_flat-red',
                    radioClass: 'iradio_flat-red'
                });

                //Colorpicker
                $(".my-colorpicker1").colorpicker();
                //color picker with addon
                $(".my-colorpicker2").colorpicker();

                //Timepicker
                $(".timepicker").timepicker({
                    showInputs: false
                });
            });
        </script>
</body>
</html>