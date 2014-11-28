<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%><!DOCTYPE html><html><head><meta	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'	name='viewport'><meta name="viewport" content="width=device-width" /><title>Estimating software</title><link href="resources/css/bootstrap.min.css" rel="stylesheet" /><link href="resources/css/font-awesome.min.css" rel="stylesheet"	type="text/css" /><link href="resources/css/ionicons.min.css" rel="stylesheet"	type="text/css" /><link href="resources/css/AdminLTE.css" rel="stylesheet"	type="text/css" /><link href="resources/font-awesome-4.1.0/css/font-awesome.min.css"	rel="stylesheet" type="text/css"><link href="resources/wizard/css/gsdk-base.css" rel="stylesheet"	type="text/css"><link rel="stylesheet" href="resources/css/normalize.css"><link rel="stylesheet" href="resources/css/main.css"><link rel="stylesheet" href="resources/css/jquery.steps.css"><script src="resources/js/modernizr-2.6.2.min.js"></script><script src="resources/js/jquery-1.9.1.min.js"></script><script src="resources/js/jquery.cookie-1.3.1.js"></script><script src="resources/js/jquery.steps.js"></script><script	src="resources/js/jquery.min.js"></script><script src="resources/js/bootstrap.min.js" type="text/javascript"></script><script src="resources/js/AdminLTE/app.js" type="text/javascript"></script><script src="resources/wizard/js/wizard.js"></script><script src="resources/js/plugins/metisMenu/metisMenu.min.js"></script><script src="resources/wizard/js/jquery.bootstrap.wizard.js"></script></head><body class="skin-blue">	<!-- header logo: style can be found in header.less -->	<jsp:include page="head-banner.jsp" />	<div class="wrapper row-offcanvas row-offcanvas-left">		<jsp:include page="left-banner.jsp" />		<!-- Right side column. Contains the navbar and content of the page -->		<aside class="right-side">			<!-- Content Header (Page header) -->			<section class="content-header"></section>			<!-- Main content -->			<section class="content">			<div class="nav-tabs-custom">                <!-- Tabs within a box -->                <ul class="nav nav-tabs pull-right" style="cursor: move;">                    <li class="active"><a href="#share-to-other" data-toggle="tab">To other user</a></li>                    <li class=""><a href="#share-by-other" data-toggle="tab">By other user</a></li>                    <li class="pull-left header"><i class="fa fa-inbox"></i>Project Share</li>                </ul>                <div class="tab-content no-padding">                    <!-- Project share to other user -->                    <div class="chart tab-pane active" id="share-to-other" style="position: relative; \">		                <div class="box-body table-responsive">		                    <table id="projectTable" class="table table-bordered  table-striped">		                        <thead style="background-color: #3c8dbc; color: white">		                            <tr>		                                <th>Name</th>		                                <th>Type</th>		                                <th>Description</th>		                                <th>Share to</th>		                                <th>Edit</th>		                            </tr>		                        </thead>		                        <tbody> 		                        	<tr>		                                <th>Name</th>		                                <th>Type</th>		                                <th>Description</th>		                                <th>Share to</th>		                                <th>		                                	<a href="#myModal-newp-project"data-toggle="modal"data-target="#myModal-edit-share">Edit</a>		                                </th>		                            </tr>  		                           		                        </tbody>		                    </table>		                    		                </div>		                <div class="box-footer">                            <button class="btn bg-purple margin" name="btn_share_new" id="btn_share_new" data-toggle="modal" data-target="#myModal-newp-share">                            Share new project</button>                        </div>		                    </div>                  	<!--   Project shared from other user -->                    <div class="chart tab-pane" id="share-by-other" style="position: relative;">                    	 <div class="box-body table-responsive">		                    <table id="projectTable" class="table table-bordered table-striped">		                        <thead style="background-color: #3c8dbc; color: white">		                            <tr>		                                <th>Name</th>		                                <th>Type</th>		                                <th>Description</th>		                                <th>Share by</th>		                                <th style="width: 100px">View Detail</th>		                            </tr>		                        </thead>		                        <tbody>                                   		                        </tbody>		                    </table>		                </div>		                <h1>show list and detail</h1>                    </div>                </div>            </div>            <div class="nav-tabs-custom">                <!-- Tabs within a box -->                <ul class="nav nav-tabs pull-right" style="cursor: move;">                    <li class="active"><a href="#usecase-point" data-toggle="tab">Usecase Point</a></li>                    <li class=""><a href="#function-point" data-toggle="tab">Function Point</a></li>                    <li class="pull-left header"><i class="fa fa-inbox"></i>Detail of Project Name</li>                </ul>                <div class="tab-content no-padding">                    <!-- Detail usecase point -->                    <div class="chart tab-pane active" id="usecase-point" style="position: relative; height: 300px;">						<!-- select version -->						<div class="box box-solid box-info">                            <div class="box-header">                            	<p style="font-size: 15px!important;">Select version of project</p>                            </div>                            <div class="box-body">		                        <select class="form-control" id="selectUCP">		                            <option>Version 1</option>		                            <option>Version 2</option>		                            <option>Version 3</option>		                            <option>Version 4</option>		                            <option>Version 5</option>		                        </select>                            </div>						 </div>						<!-- Use Case Point Weight of project -->						<div class="panel panel-default">						    <div class="panel-heading" role="tab" id="collapseListGroupHeading3">						        <h4 class="panel-title">						          <a class="collapsed" data-toggle="collapse" href="#collapseListGroup3" aria-expanded="false" aria-controls="collapseListGroup3">						           Use Case Point Weight						          </a>						        </h4>						      </div>						    <div id="collapseListGroup3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading3">						         <div class="box box-warning">		                            <div class="box-body">		                               <table style="width: 100%" class="table table-hover">										 	<tr class="info">										 		<th>Simple: <span class="badge bg-yellow" id="ucpw_simple">55%</span></th>										 		<th>Average: <span class="badge bg-yellow" id="ucpw_Average">55%</span></th>										 		<th>Complex: <span class="badge bg-yellow" id="ucpw_Complex">55%</span></th>										 	</tr>													</table>		                            </div>								 </div>						    </div>					    </div>													<!-- Function Point Weight -->						<div class="panel panel-default">						    <div class="panel-heading" role="tab" id="collapseListGroupHeading4">						        <h4 class="panel-title">						          <a class="collapsed" data-toggle="collapse" href="#collapseListGroup4" aria-expanded="false" aria-controls="collapseListGroup3">						           Function Point Weightct						          </a>						        </h4>						      </div>						    <div id="collapseListGroup4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading4">						         <div class="box box-danger">		                            <div class="box-body">		                               <table style="width: 100%" class="table table-hover">										 	<tr class="info">										 		<th>Simple: <span id="fpw_Simple" class="badge bg-red">55%</span></th>										 		<th>Average: <span id="fpw_Average" class="badge bg-red">55%</span></th>										 		<th>Complex: <span id="fpw_Complex" class="badge bg-red">55%</span></th>										 	</tr>													</table>		                            </div>								 </div>						    </div>					    </div>							 						<!-- Technical Complexity Factor -->						<div class="panel panel-default">						    <div class="panel-heading" role="tab" id="collapseListGroupHeading5">						        <h4 class="panel-title">						          <a class="collapsed" data-toggle="collapse" href="#collapseListGroup5" aria-expanded="false" aria-controls="collapseListGroup3">						           Technical Complexity Factor						          </a>						        </h4>						      </div>						    <div id="collapseListGroup5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading5">						         <div class="box box-primary">			                        <div class="box-body">				                        <table  style="width: 100%" class="table table-hover">											<tr class="info">												<th>Distributed system:</th>												<th>Performance objectives:</th>												<th>End User efficiency:</th>												<th>Complex Processing:</th>												<th>Reusable Code:</th>											</tr>											<tr>												<th><span id="" class="badge bg-light-blue">55%</span></th>												<th><span class="badge bg-light-blue">55%</span></th>												<th><span class="badge bg-light-blue">55%</span></th>												<th><span class="badge bg-light-blue">55%</span></th>												<th><span class="badge bg-light-blue">55%</span></th>											</tr>											<tr class="info">												<th>Ease of Installation:</th>												<th>Ease of Use:</th>												<th>Portable:</th>												<th>Ease of Change:</th>												<th>Concurrent Use:</th>											</tr>											<tr>												<th><span class="badge bg-light-blue">55%</span></th>												<th><span class="badge bg-light-blue">55%</span></th>												<th><span class="badge bg-light-blue">55%</span></th>												<th><span class="badge bg-light-blue">55%</span></th>												<th><span class="badge bg-light-blue">55%</span></th>											</tr>											<tr class="info">												<th>Special Security:</th>												<th>Access for Third Parties:></th>												<th>Training Needs</th>											</tr>												<tr>												<th><span class="badge bg-light-blue">55%</span></th>												<th><span class="badge bg-light-blue">55%</span></th>												<th><span class="badge bg-light-blue">55%</span></th>											</tr>											</table>			                        </div>								</div>						    </div>					    </div>													 <!-- Inviromental factors -->						<div class="panel panel-default">						    <div class="panel-heading" role="tab" id="collapseListGroupHeading6">						        <h4 class="panel-title">						          <a class="collapsed" data-toggle="collapse" href="#collapseListGroup6" aria-expanded="false" aria-controls="collapseListGroup3">						           Function Point Weightct						          </a>						        </h4>						      </div>						    <div id="collapseListGroup6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading6">						        <div class="box box-success">		                            <div class="box-body">		                               <table style="width: 100%" class="table table-hover" >										<tr class="info">											<th>Familiar Development Process:</th>											<th><span class="badge bg-green">55%</span></th>											<th>Application Experience:</th>											<th><span class="badge bg-green">55%</span></th>											<th>Object-Oriented Experience:</th>											<th><span class="badge bg-green">55%</span></th>											<th>Lead Analyst Capability:</th>											<th><span class="badge bg-green">55%</span></th>										</tr>										<tr class="info">											<th>Motivation:</th>											<th><span class="badge bg-green">55%</span></th>											<th>Stable Requirements:</th>											<th><span class="badge bg-green">55%</span></th>											<th>Part-time Staff:</th>											<th><span class="badge bg-green">55%</span></th>											<th>Difficult Programming Language:</th>											<th><span class="badge bg-green">55%</span></th>										</tr>									</table>		                            </div>								 </div>		                    </div>						</div>					</div>						                   	<!--   Detail function point -->                    <div class="chart tab-pane" id="function-point" style="position: relative; height: 300px;">						<!-- select version -->						<div class="box box-solid box-info">                            <div class="box-header">                            	<p style="font-size: 15px!important;">Select version of project</p>                            </div>                            <div class="box-body">		                        <select class="form-control" id="selectUCP">		                            <option>Version 1</option>		                            <option>Version 2</option>		                            <option>Version 3</option>		                            <option>Version 4</option>		                            <option>Version 5</option>		                        </select>                            </div>						 </div>						<!-- Use Case Point Weight of project -->						<div class="panel panel-default">					      <div class="panel-heading" role="tab" id="collapseListGroupHeading1">					        <h4 class="panel-title">					          <a class="collapsed" data-toggle="collapse" href="#collapseListGroup1" aria-expanded="false" aria-controls="collapseListGroup1">					           Use Case Point Weight of project					          </a>					        </h4>					      </div>					    <div id="collapseListGroup1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading1">					        					        <!-- Domain Characteristic Table -->							<div class="box box-warning">	                            <!-- <div class="box-header">	                            	<p style="font-size: 15px!important;">Use Case Point Weight of project</p>	                            </div> -->	                            <div class="box-body">	                               <table class="table ">										<tr>											<th style="width: 20px" rowspan="2"><h4>NO.</h4></th>											<th style="width: 500px" rowspan="2"><h4>MEASUREMENT PARAMETER</h4></th>											<th colspan="3">											<span style="margin-left: 40%">											WEIGHTING FACTOR											</span>											</th>										</tr>										<tr>											<th>Simple</th>											<th>Average</th>											<th>Complex</th>										</tr>										<tr>											<td>1</td>											<td>Number of User Input</td>											<td><span class="badge bg-yellow">55%</span></td>											<td><span class="badge bg-yellow">55%</span></td>											<td><span class="badge bg-yellow">55%</span></td>										</tr>										<tr>											<td>2</td>											<td>Number of User Outputs</td>											<td><span class="badge bg-yellow">55%</span></td>											<td><span class="badge bg-yellow">55%</span></td>											<td><span class="badge bg-yellow">55%</span></td>										</tr>										<tr>											<td>3</td>											<td>Number of User Inquiries</td>											<td><span class="badge bg-yellow">55%</span></td>											<td><span class="badge bg-yellow">55%</span></td>											<td><span class="badge bg-yellow">55%</span></td>										</tr>										<tr>											<td>4</td>											<td>Number of Files</td>											<td><span class="badge bg-yellow">55%</span></td>											<td><span class="badge bg-yellow">55%</span></td>											<td><span class="badge bg-yellow">55%</span></td>										</tr>										<tr>											<td>5</td>											<td>Number of External Interfaces</td>											<td><span class="badge bg-yellow">55%</span></td>											<td><span class="badge bg-yellow">55%</span></td>											<td><span class="badge bg-yellow">55%</span></td>										</tr>									</table>	                            </div>							</div>					        <div class="panel-footer">Use Case Point Weight of project</div>					      </div>					    </div>					   <!-- Relative Complexity Adjustment Factor -->						<div class="panel panel-default">						    <div class="panel-heading" role="tab" id="collapseListGroupHeading2">						        <h4 class="panel-title">						          <a class="collapsed" data-toggle="collapse" href="#collapseListGroup2" aria-expanded="false" aria-controls="collapseListGroup1">						           External Interface File						          </a>						        </h4>						      </div>						    <div id="collapseListGroup2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading2">						        						        				                <div class="box box-primary" >						          						           	<div class="box-body">						         	<table class="table">										<tr class="info">											<th>Requirement for reliable backup and recovery:</th>											<th><span class="badge bg-light-blue">55%</span></th>											<th>Requirement for data communication:</th>											<th><span class="badge bg-light-blue">55%</span></th>										</tr>										<tr class="info">											<th>Extent of distributed processing:</th>											<th><span class="badge bg-light-blue">55%</span></th>											<th>Performance requirements:</th>											<th><span class="badge bg-light-blue">55%</span></th>										</tr>										<tr class="info">											<th>Expected operational environment:</th>											<th><span class="badge bg-light-blue">55%</span></th>											<th>Extent of online data entries:</th>											<th><span class="badge bg-light-blue">55%</span></th>										</tr>										<tr class="info">											<th>Extent of multi-screen or multi-operation online data input:</th>											<th><span class="badge bg-light-blue">55%</span></th>											<th>Extent of online updating of master files:</th>											<th><span class="badge bg-light-blue">55%</span></th>										</tr>										<tr class="info">											<th>Extent of complex inputs, outputs, online queries and files:</th>											<th><span class="badge bg-light-blue">55%</span></th>											<th>Extent of complex data processing:</th>											<th><span class="badge bg-light-blue">55%</span></th>										</tr>										<tr class="info">											<th>Extent that currently developed code can be designed for reuse:</th>											<th><span class="badge bg-light-blue">55%</span></th>											<th>Extent of conversion and installation included in the design:</th>											<th><span class="badge bg-light-blue">55%</span></th>										</tr>										<tr class="info">											<th>Extent of multiple installations in an organizationand variety of 											customer organizations:</th>											<th><span class="badge bg-light-blue">55%</span></th>											<th>Extent of change and focus on ease of use:</th>											<th><span class="badge bg-light-blue">55%</span></th>										</tr>									</table>						           </div><!-- /.box-body -->						       </div>  						    </div>					    </div>												                    </div>                </div>            </div>			</section>			<!-- /.content -->		</aside>		<!-- /.right-side -->	</div>	<!-- ./wrapper -->	<!-- MODAL ADD NEW SHARE -->	<div class="modal fade" id="myModal-newp-share" tabindex="-1"	role="dialog" aria-labelledby="myModalLabel3">		<div class="modal-dialog">			<div class="modal-content">				<div class="modal-header">					<h4 class="modal-title" id="myModalLabel3">Share New</h4>				</div>			<div class="modal-body">			<form action="addProject.html" method="POST">								<label>Select project:</label> 				<select class="form-control" name="typeProject">					<c:forEach var="projectType" items="${listProjectType}">						<option value="${projectType.maLoaiProject }">${projectType.tenLoaiProject }</option>					</c:forEach>				</select>				<label>Enter name user to share</label>				<div class="input-group margin">                    <input type="text" class="form-control">                    <span class="input-group-btn">                        <button class="btn" type="button">Add</button>                    </span>                </div>				<label>List user:</label>				<textarea class="form-control" name="txtDescription"  placeholder="Enter ..."></textarea>								<button type="submit" class="btn bg-purple margin">Share</button>			</form>				</div>		</div>		</div>	</div>	<!-- MODAL EDIT SHARE -->	<div class="modal fade" id="myModal-edit-share" tabindex="-1"	role="dialog" aria-labelledby="myModalLabel">		<div class="modal-dialog">			<div class="modal-content">				<div class="modal-header">					<h4 class="modal-title brand-success" id="myModalLabel">Edit Share</h4>				</div>			<div class="modal-body">			<form action="addProject.html" method="POST">								<div class="box-body table-responsive">				<label >List user shared with: <i>project name</i></label>                    <table id="projectTable" class="table table-bordered  table-striped">                        <thead style="background-color: #3c8dbc; color: white">                            <tr>                                <th>Name</th>                                <th>Remove</th>                                                            </tr>                        </thead>                        <tbody>                         	<tr>                                <th>Name</th>                                <th>                                	<a href="#">Remove</a>                                </th>                            </tr>                          </tbody>                    </table>                </div>                <label>Enter name user to share</label>				<div class="input-group margin">                    <input type="text" class="form-control">                    <span class="input-group-btn">                        <button class="btn" type="button">Add</button>                    </span>                </div>			</form>				</div>		</div>		</div>	</div></body></html>