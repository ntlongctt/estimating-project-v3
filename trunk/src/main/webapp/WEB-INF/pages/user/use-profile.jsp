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

<script	src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
<script src="resources/wizard/js/wizard.js"></script>
<script src="resources/js/plugins/metisMenu/metisMenu.min.js"></script>
<script src="resources/wizard/js/jquery.bootstrap.wizard.js"></script>



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
											<span class="badge">Nguyễn</span>
										</dd>
										<dt>User name:</dt>
										<dd>
											<span class="badge">Yo1o</span>
										</dd>
										<dt>Phone:</dt>
										<dd>
											<span class="badge">01663708569</span>
										</dd>
										<dt>Birth date:</dt>
										<dd>
											<span class="badge">07/05/1992</span>
										</dd>
										<dt>Company:</dt>
										<dd>
											<span class="badge">ESP company</span>
										</dd>
									</dl>
								</h4>
							</div>
							<div class="col-md-6">
								<h4>
									<dl class="dl-horizontal">
										<dt>Last name:</dt>
										<dd>
											<span class="badge">Thành Long</span>
										</dd>
										<dt>Password:</dt>
										<dd>
											<span class="badge">**************</span>
										</dd>
										<dt>Mail:</dt>
										<dd>
											<span class="badge">longnguyenctt@gmail.com</span>
										</dd>
										<dt>Gender:</dt>
										<dd>
											<span class="badge">Male</span>
										</dd>
										<dt>Address:</dt>
										<dd>
											<span class="badge">22, Huu Nghi, Binh Tho, Thu Duc,
												Tp.HCM</span>
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

</body>
</html>