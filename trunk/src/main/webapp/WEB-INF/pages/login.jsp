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
                        <h1><a href="">ESP-app Register <span class="red">.</span></a></h1>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <b>Language</b> &nbsp;&nbsp;&nbsp;&nbsp;
                        <span>                     
                            <a href="login.html?lang=en"><img src="resources/login/img/flaguk.png" alt=""></a>
                            <a href="login.html?lang=vn"><img src="resources/login/img/flagvn.png" alt=""></a>
                        </span>
                    </div>
                    <form id="loginForm" action="j_spring_security_check" method="post" class="navbar-form navbar-left register span6" autocomplete="off" role="search"style="margin-left:100px">	
                       <div class="form-group">
                            <input type="text"  id="j_username" name="j_username" class="form-control" placeholder="User name" style="width:200px" autofocus>
                            <input type="text" id="j_password" name="j_password" class="form-control" placeholder="Password" style="width:200px">                   
                            <button class="btn btn-danger btn-flat" type="submit" style="margin-top:5px">LOGIN</button>
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

        <div class="register-container container" style="width:100%">
            <div class="row">
                <div class="iphone span2" style="width:30%;">
                    <img src="resources/login/img/Balanced1.png" alt="" style="width:400px" >
                </div>
                <div class="register span12" style="width:58%;">
                    <form action="" method="post">
                        <h2>REGISTER TO <span class="red"><strong>iAPP</strong></span></h2>
                        <div class="navbar-form">
                            First Name
                            <input type="text" id="firstname" name="firstname" placeholder="enter your first name..." style="margin: 0px 40px 5px 30px;" required>
                            Last Name
                            <input type="text" id="lastname" name="lastname" placeholder="enter your first name..." style="margin: 0px 40px 5px 30px;" required></br>        
                            Email
                            <input type="text" id="email" name="email" placeholder="enter your email..." style="margin: 0px 40px 5px 63px;" required>
                            Phone
                            <input type="text" id="phone" name="phone" placeholder="enter your phone..." style="margin: 0px 40px 5px 58px;"></br>
                            Company
                            <input type="text" id="company" name="company" placeholder="enter your company..." style="margin: 0px 40px 5px 40px;">
                            Website
                            <input type="text" id="website" name="website" placeholder="enter your website..." style="margin: 0px 40px 5px 47px;"></br>
                            User Name
                            <input type="text" id="username" name="username" placeholder="choose a username..." style="margin: 0px 40px 5px 30px;" required>
                            Password
                            <input type="password" id="password" name="password" placeholder="choose a password..." style="margin: 0px 40px 5px 37px;" required></br>
                            Birth Date
                            <input type="text" id="birthdate" name="birthdate" placeholder="enter your birth date..." style="margin: 0px 40px 5px 35px;">
                            Gender
                            <select class="combobox" style="margin: 0px 40px 5px 52px;">
                                <option value="0">Male</option>
                                <option value="1">Female</option>
                            </select></br>
                            Address
                            <textarea class="span4" rows="3" placeholder="enter your address..." style="margin-left:50px"></textarea></br>
                            <button type="submit" style="width:120px">REGISTER</button>
                            <button type="submit" class="btn btn-primary" style="width:120px; background-color:#607b8b">CANCEL</button>
                        </div>
                    </form>
                </div>
            </div>
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
        <script src="../resources/login/js/jquery-1.8.2.min.js"></script>
        <script src="../resources/login/bootstrap/js/bootstrap.min.js"></script>
        <script src="../resources/login/js/jquery.backstretch.min.js"></script>
        <script src="../resources/login/js/scripts.js"></script>
    </body>

</html>

