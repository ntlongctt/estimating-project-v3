<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<link href="resources/css/ionicons.min.css" rel="stylesheet"
	type="text/css" />
<!-- Theme style -->

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

				<!-- /.box-header -->
				<div class="col-xs-6">
					<p class="lead">${selectedUser.hoTen}'s personal information</p>
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 50%">Full name:</th>
									<td>${selectedUser.hoTen}</td>
								</tr>
								<tr>
									<th>ID</th>
									<td>${selectedUser.cmnd}</td>
								</tr>
								<tr>
									<th>Phone:</th>
									<td>${selectedUser.phone}</td>
								</tr>
								<tr>
									<th>Email:</th>
									<td>${selectedUser.mail}</td>
								</tr>
							</tbody>
						</table>
					</div>

				</div>

				<div class="col-xs-6">
					<p class="lead">${selectedUser.hoTen}'s projects</p>
					<div class="table-responsive">
						<table id="projectTable" name="projectTable"
							class="table table-striped">
							<thead>
								<tr>
									<th>Name</th>
									<th>Description</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${selectedUser.projects}">
									<tr>
										<td><a
											href="/estimating/selectedProject.html?projectId=${ item.maProject}">${ item.tenProject}</a></td>
										<td>${item.moTa}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

				</div>

				<!-- /.box-body -->
			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>
</html>