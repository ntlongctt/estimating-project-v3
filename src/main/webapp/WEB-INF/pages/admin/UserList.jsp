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
<!-- DATA TABLES -->
<link href="resources/css/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->

<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/plugins/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js"
	type="text/javascript"></script>

<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		$("#userTable").dataTable();
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
				<h1>${currentTabRole == "admin" ? 
			"Admins in the system" :
			"Members in the system"}
				</h1>
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- /.box-header -->
				<div class="col-xs-12 table-responsive">
					<table id="userTable" name="userTable"
						class="table table-striped">
						<thead>
							<tr>
								<th>Account</th>
								<th>Name</th>
								<th>ID</th>
								<th>Phone</th>
								<th>Email</th>
								<th>Reset password</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="item" items="${userList}">
								<tr>
									<td><a
										href="/estimating/selectedUser.html?username=${ item.tenUser}"
										value="${ item.tenUser}">${ item.tenUser}</a></td>
									<td>${item.hoTen}</td>
									<td>${item.cmnd}</td>
									<td>${item.phone}</td>
									<td>${item.mail}</td>
									<td><button href="/estimating/reset-password-for-user.html?username=${ item.tenUser}">
									Reset</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
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