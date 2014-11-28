<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
 <!-- InputMask -->
        <script src="resources/js/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
        <script src="resources/js/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
        <script src="resources/js/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>

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
								
									<dl class="dl-horizontal">
										<!--User Name  -->
										<div class="from">
											<tr>
												<th>User name:</th>
												<th><input type="text" class="form-control" id="username" disabled></th>
											</tr>
										</div>
										<!--First Name  -->
										<div class="from">
											<tr>
												<th>Full name:</th>
												<th><input type="text" class="form-control" id="fullname" ></th>
											</tr>
										</div>
										<!-- Phone: -->
										<div class="from">
											<tr>
												<th>Phone:</th>
												<th><input type="text" class="form-control" id="phone"></th>
											</tr>
										</div>
									</dl>
								
							</div>
							<div class="col-md-6">
									<dl class="dl-horizontal">
									<!-- Last name -->
									<div class="from">
											<tr>
												<th>Email:</th>
												<th><input type="text" class="form-control" id="mail"></th>
											</tr>
									</div>
									<!-- Address -->
										<div class="from">
											<tr>
												<th>Address:</th>
												<th><input type="text" class="form-control" id="address"></th>
											</tr>
										</div>
								</dl>
								<p class="text-right">
									<button class="btn btn-default btn-flat" onclick="editProfile();">Submit</button>
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
	<script src="resources/js/myjs/user.js" type="text/javascript"></script>
</body>
</html>