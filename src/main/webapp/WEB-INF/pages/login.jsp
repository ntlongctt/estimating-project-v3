<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<meta name="viewport" content="width=device-width" />
        <meta charset="utf-8">
        <title>Fullscreen Responsive Register Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
        <link rel="stylesheet" href="resources/login/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/login/css/style.css">
    </head>
    <body>
        <div class="header">
            <div class="container">
                <div class="row">                
                    <div class="logo span5">
                    </div>
                    <form id="loginForm" action="j_spring_security_check" method="post" class="navbar-form navbar-left register span6" autocomplete="off" role="search"style="margin-left:130px">	
                       <div class="form-group" style="width: 800px">
                            <input type="text"  id="j_username" name="j_username" placeholder="User name" style="width:200px" autofocus>
                            <input type="password" id="j_password" name="j_password" placeholder="Password" style="width:200px">                   
                            <button class="btn btn-danger btn-flat" type="submit" style="margin-top:5px">LOGIN</button>
                    		<a class="btn btn-primary btn-flat" href="register.html" style="margin-top:5px">REGISTER</a>
                        </div>
                        <c:if test="${message != null}">
                   		<div class="alert alert-danger">
                   		 <p><spring:message code="err.login"/></p>
       					</div>
                    </c:if>
                        <div class="form-group">
                            <input type="checkbox" name="remember_me" style="margin-top:-1px"> Remember me
                            <a href="#" style="margin-left:100px" data-toggle="modal" data-target="#myModal">I forgot my password</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

		<div style="margin-top: 200px">
			<h1 style="text-align: center; font-size: 70px"><a href="login.html" style="text-decoration: none;color: #ffffff">ESTIMATING PROJECT'S COST</a></h1>
	        <h3 style="text-align: center;color: #22e793">Master your invesment - Master your succeed</h3>
	        <hr style="width: 600px; margin-left: 380px">
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Forgot Your Password?</h4>
              </div>
              <div class="modal-body">
                    <span>Enter the user name to reset password                 
                        <input type="text" id="username-forgot" name="username-forgot">
                    </span>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Send me a password-reset email</button>
              </div>
            </div>
          </div>
        </div>

        <!-- Javascript -->
        <script src="resources/login/js/jquery-1.8.2.min.js"></script>
        <script src="resources/login/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/login/js/jquery.backstretch.min.js"></script>
        <script src="resources/login/js/scripts.js"></script>
    </body>
<script type="text/javascript">
function goRegister() {
	alert("Register");
}
</script>
</html>

