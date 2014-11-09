<%-- 
    Document   : template
    Created on : Aug 18, 2014, 5:50:08 AM
    Author     : HT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>404 Page Not Found</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link type="text/css" href="resources/main/css/" rel="stylesheet">
<link type="text/css" href="resources/main/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css"
	href="resources/main/css/bootstrap-responsive.min.css" rel="stylesheet">
<link type="text/css" href="resources/main/css/theme.css"
	rel="stylesheet">
<link type="text/css" href="resources/main/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>
</style>
</head>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container" style="width: 90%; padding-right: 0px;">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i></a><a class="brand" href="#"
					style="padding-left: 150px; color: black; font-size: 36px; font-style: italic">CSC
					Vietnam eBanking </a>
				<!-- /.nav-collapse -->
			</div>
		</div>
		<!-- /navbar-inner -->
	</div>
	<!-- /navbar -->
	<div class="wrapper" style="height: 480px">
		<div class="container">
			<div style="alignment-adjust: central; margin-left: 20%">
				<div style="display: block;">
					<div style="font-size: 62px; color: red; float: left">404</div>
					<div style="float: left; margin-left: 14%; font-size: 14px; color: black">
						<div style="font-size: 24px">
							<i class="icon-warning-sign icon-large"></i><b style="">Oops!
								Page not found.</b>
						</div>
						<p>We could not find the page you were looking for. Meanwhile,
							you may return to login page or your home page by clicking the
							button below:</p>
						<div class="controls clearfix">
							<a href="logout.html"><button type="button"
									class="btn btn-primary pull-left" style="margin-left: 15px;">Sign Out</button></a>
							<a href="#"><button type="button"
									class="btn btn-primary pull-left" style="margin-left: 15px;" onclick="history.go(-1);return true;">Back</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.container-->
	</div>

</body>
</html>
