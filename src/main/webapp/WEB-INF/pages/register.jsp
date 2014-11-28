<head>
<link href="resources/login/css/style.form.stepbystep.css" rel="stylesheet" type="text/css">
</head>
<!-- multistep form -->


		<a href="login.html"><img src="resources/login/img/home_w.png" style="width: 40px; height: 40px; float: right"></a>
		<h1 style="text-align: center;"><a href="login.html" style="text-decoration: none;color: #ffffff">ESTIMATING PROJECT'S COST</a></h1>
        <h3 style="text-align: center;color: #22e793">Master your invesment - Master your succeed</h3>
<form id="msform">
	<!-- progressbar -->
	<ul id="progressbar">
		<li class="active">Account Setup</li>
		<li>Personal Details</li>
		<li>Finish</li>
	</ul>
	<!-- fieldsets -->
	<fieldset>
		<h2 class="fs-title">Create your account</h2>
		<h3 class="fs-subtitle">Enter your account</h3>
		<input type="text" name="username" placeholder="Username" />
		<input type="password" name="pass" placeholder="Password" />
		<input type="password" name="cpass" placeholder="Confirm Password" />
		<input type="button" class="action-button" onclick="window.location.href='index.html'" style="background-color: #ee9943" value="Home">
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Personal Details</h2>
		<h3 class="fs-subtitle">We will never sell it</h3>
		<input type="text" name="fname" placeholder="First Name" />
		<input type="text" name="lname" placeholder="Last Name" />
		<input type="text" name="phone" placeholder="Phone" />
		<textarea name="address" placeholder="Address"></textarea>
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Finish</h2>
		<h3 class="fs-subtitle">You agree you have read and accepted our terms of use and our privacy policy</h3>
		<input type="checkbox" name="ckVIPMem" />
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="submit" name="submit" class="submit action-button" value="Submit" />
	</fieldset>
</form>

<!-- jQuery -->
<script src="resources/login/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<!-- jQuery easing plugin -->
<script src="resources/login/js/jquery.easing.min.js" type="text/javascript"></script>
<script src="resources/login/js/jquery.handleform.js"></script>


