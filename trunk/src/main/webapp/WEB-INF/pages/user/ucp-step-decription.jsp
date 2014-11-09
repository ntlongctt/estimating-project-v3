<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<meta name="viewport" content="width=device-width" />
<title>ucp step description</title>

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
			
				<!-- EASY -->
				<div class="box box-solid" >
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="easy">Easy</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>The actor represents another system with a defined Application Programming Interface (API)</p>
						</blockquote>
					</div>
				</div><!-- END EASY -->
				
				<!-- MEDIUM -->
				<div class="box box-solid" >
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="medium">Medium</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>The actor represents another system interacting through a protocol-driver Interface (TCP/IP) </p>
						</blockquote>
					</div>
				</div><!-- END MEDIUM -->
				
				<!-- DIFFICULT -->
				<div class="box box-solid" >
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="difficult">Difficult</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>The actor is a person interacting via a Graphical User Interface (GUI) </p>
						</blockquote>
					</div>
				</div><!-- END DIFFICULT -->
				
				<!-- SIMPLE -->
				<div class="box box-solid" >
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="simple">Simple</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>The simple one of the following criteria:</p>
							<ul>
								<li>Touches only a single database entity</li>
								<li>Its success scenario has 3 steps or less</li>
								<li>Involves less than 5 classes</li>
							</ul>
						</blockquote>
					</div>
				</div><!-- END SIMPLE -->
				
				<!-- AVERAGE -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="average">Average</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>The average is one of the following criteria: </p>
							<ul>
								<li>Touches 2 or more database entities</li>
								<li>Between 4-7 steps</li>
								<li>Involves 5-10 classes.</li>
							</ul>
						</blockquote>

					</div>
				</div><!-- END AVERAGE -->
				
				<!-- Complex -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="complex">Complex</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>The complex is one of the following criteria</p>
							<ul>
								<li>Touches 3 or more database entities</li>
								<li>Over seven steps</li>
								<li>Involves more than 10 classes.</li>
							</ul>
						</blockquote>
					</div>
				</div><!-- END Complex -->
				
				<!-- Distributed system -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Distributed-system">Distributed system</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Informs whether distributed data processing is required in the system.</p>
							<p>The weight of Distributed System is 2 </p>
						</blockquote>

					</div>
				</div><!-- END Distributed system -->
				
				<!-- Performance objectives -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Performance-objectives">Performance objectives</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Determines the system's efficiency with regard to response time to events, flow, etc. </p>
							<p>The weight of Performance is 1 </p>
						</blockquote>

					</div>
				</div><!-- END Performance objectives -->
				
				<!-- End User efficiency -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="End-User-efficiency">End User efficiency</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Defines efficiency for the final user in the context of his or her perception.</p>
							<p>The weight of End User Efficiency is 1 </p>
						</blockquote>

					</div>
				</div><!-- END End User efficiency -->
				
				<!-- Complex Processing -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Complex-Processing">Complex Processing</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Determines whether complicated operations related to data processing, use of advanced algorithms are required.</p>
							<p>The weight of Complex Processing is 1 </p>
						</blockquote>

					</div>
				</div><!-- END Complex Processing -->
				
				<!-- Reusable Code -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Reusable-Code">Reusable Code</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Informs whether elements or the code of the generated system will be used again. </p>
							<p>The weight of Reusable Code is 1 </p>
						</blockquote>

					</div>
				</div><!-- END Reusable Code -->
				
				<!-- Ease of Installation -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Ease-of-Installation">Ease of Installation</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Specifies the method of installation, ease of installation and whether it is user-friendly, indicates whether the participation of specialists will be required for the installation and initial setup on the part of the software supplier.</p>
							<p>The weight of Installability is 0.5 </p>
						</blockquote>

					</div>
				</div><!-- END Ease of Installation -->
				
				<!-- Ease of Use -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Ease-of-Use">Ease of Use</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Determines the adjustment of user's interface to his or her needs, convenience in use and whether it is easy to learn how to use the system.</p>
							<p>The weight of Ease of Use is 0.5 </p>
						</blockquote>
					</div>
				</div><!-- END Ease of Use -->
				
				<!-- Portable -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Portable">Portable</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Informs whether application should operate in certain environments. </p>
							<p>The weight of Portable is 2 </p>
						</blockquote>

					</div>
				</div><!-- END Portable -->
				
				<!-- Ease of Change -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Ease-of-Change">Ease of Change</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Determines whether the system is to be built in such a way that it will be easy to further develop it in the future.</p>
							<p>The weight of Portable is 1 </p>
						</blockquote>

					</div>
				</div><!-- END Ease of Change -->
				
				<!-- Concurrent Use -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Concurrent-Use">Concurrent Use</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Informs whether the concurrent processing will take place in the system. </p>
							<p>The weight of Concurrent is 1 </p>
						</blockquote>

					</div>
				</div><!-- END Concurrent Use -->
				
				<!-- Special Security -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Special-Security">Special Security</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Defines whether the system will require the use of mechanisms related to securing access to the system or data. </p>
							<p>The weight of Special Security is 1 </p>
						</blockquote>

					</div>
				</div><!-- END Special Security -->
				
				<!-- Access for Third Parties -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Access-for-Third-Parties">Access for Third Parties</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Determines to what degree other external systems or actors will use the system. </p>
							<p>The weight of Access for Third Parties is 1 </p>
						</blockquote>

					</div>
				</div><!-- END Access for Third Parties -->
				
				<!-- Training Needs -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Training-Needs">Training Needs</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Determines the need to organize trainings for users. </p>
							<p>The weight of Training Needs is 1 </p>
						</blockquote>

					</div>
				</div><!-- END Training Needs -->
				
				<!-- Familiar with Development Process -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Familiar">Familiar with Development Process</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Day la doan giai thich chi so average la gi, trong he
								thong nao</p>
							<p>VD: trong he thong abc thi cac use case a,b,c duoc xem la
								loai average</p>
						</blockquote>

					</div>
				</div><!-- END Familiar with Development Process -->
				
				<!-- Application Experience -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Application-Experience">Application Experience</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Day la doan giai thich chi so average la gi, trong he
								thong nao</p>
							<p>VD: trong he thong abc thi cac use case a,b,c duoc xem la
								loai average</p>
						</blockquote>

					</div>
				</div><!-- END Application Experience -->
				
				<!-- Object-Oriented Experience -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Object-Oriented-Experience">Object-Oriented Experience</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Day la doan giai thich chi so average la gi, trong he
								thong nao</p>
							<p>VD: trong he thong abc thi cac use case a,b,c duoc xem la
								loai average</p>
						</blockquote>

					</div>
				</div><!-- END Object-Oriented Experience -->
				
				<!-- Lead Analyst Capability -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Lead-Analyst-Capability">Lead Analyst Capability</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Day la doan giai thich chi so average la gi, trong he
								thong nao</p>
							<p>VD: trong he thong abc thi cac use case a,b,c duoc xem la
								loai average</p>
						</blockquote>

					</div>
				</div><!-- END Lead Analyst Capability -->
				
				<!-- Motivation -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Motivation">Motivation</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Day la doan giai thich chi so average la gi, trong he
								thong nao</p>
							<p>VD: trong he thong abc thi cac use case a,b,c duoc xem la
								loai average</p>
						</blockquote>

					</div>
				</div><!-- END Motivation -->
				
				<!-- Part-time Staff -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Part-time-Staff">Part-time Staff</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Day la doan giai thich chi so average la gi, trong he
								thong nao</p>
							<p>VD: trong he thong abc thi cac use case a,b,c duoc xem la
								loai average</p>
						</blockquote>

					</div>
				</div><!-- END Part-time Staff -->
				
				<!-- Difficult Programming Language -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title" id="Difficult_Programming_Language">Difficult Programming Language</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Day la doan giai thich chi so average la gi, trong he
								thong nao</p>
							<p>VD: trong he thong abc thi cac use case a,b,c duoc xem la
								loai average</p>
						</blockquote>

					</div>
				</div><!-- END Difficult Programming Language -->
				
				<!-- Complex -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title">Complex</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Day la doan giai thich chi so average la gi, trong he
								thong nao</p>
							<p>VD: trong he thong abc thi cac use case a,b,c duoc xem la
								loai average</p>
						</blockquote>

					</div>
				</div><!-- END Complex -->
				
				<!-- Complex -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title">Complex</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Day la doan giai thich chi so average la gi, trong he
								thong nao</p>
							<p>VD: trong he thong abc thi cac use case a,b,c duoc xem la
								loai average</p>
						</blockquote>

					</div>
				</div><!-- END Complex -->
				
				<!-- Complex -->
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-book"></i>
						<h3 class="box-title">Complex</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<blockquote>
							<p>Day la doan giai thich chi so average la gi, trong he
								thong nao</p>
							<p>VD: trong he thong abc thi cac use case a,b,c duoc xem la
								loai average</p>
						</blockquote>

					</div>
				</div><!-- END Complex -->
				
				
			
			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>
</html>