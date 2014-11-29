var username, pass, npass, cnpass , fullname, mail, phone, address;
var json;

function getPass(){
	pass = $('#pass').val();
	npass = $('#npass').val();
	cnpass = $('#cnpass').val();
	json={"pass":pass, "npass":npass };
}

function changePass(){
	getPass();
	$.ajax({
	    url: "new-password.json",
	    type: 'POST',
	    dataType: 'json',
	    data: JSON.stringify(json),
	    contentType: 'application/json',
	    mimeType: 'application/json',
	    success: function(data) {
	    	alert("Password has been change!");
	   	},
	    error: function() {
	    	alert("Error! Please try again.")
	    }
	});
}

function getProfile(){
	username = $('#username').val();
	fullname = $('#fullname').val();
	mail = $('#mail').val();
	phone = $('#phone').val();
	address = $('#address').val();
	
	json={"username":username,"fullname":fullname,"mail":mail,"phone":phone,"address":address};
}

function editProfile(){
	getProfile();
	  $.ajax({
		    url: "profile.json",
		    type: 'POST',
		    dataType: 'json',
		    data: JSON.stringify(json),
		    contentType: 'application/json',
		    mimeType: 'application/json',
		    success: function(data) {
		    	alert("Update successful!");
		   	},
		    error: function() {
		    	alert("Error! Please try again.")
		    }
		}); 
}

function getValue(){
	username = $('#username').val();
	pass = $('#pass').val();
	fullname = $('#fullname').val();
	mail = $('#mail').val();
	phone = $('#phone').val();
	address = $('#address').val();
	
	json={"username":username,"pass":pass,"fullname":fullname,"mail":mail,"phone":phone,"address":address};
}

function register() {
	  getValue();
	  $.ajax({
		    url: "registeruser.json",
		    type: 'POST',
		    dataType: 'json',
		    data: JSON.stringify(json),
		    contentType: 'application/json',
		    mimeType: 'application/json',
		    success: function(data) {
		    	alert("Register successful!");
		   	},
		    error: function() {
		    	alert("Error! Please try again.")
		    }
		}); 	          
}
$(document).ready(function() {
	$(function() {
		 $.getJSON("user-profilejson.json",{ajax : 'true'},
		 	function(data) {
			 	$("#username").val(data.username);
			 	$("#fullname").val(data.fullname);
			 	$("#phone").val(data.phone);
			 	$("#address").val(data.address);
			 	$("#mail").val(data.mail);
			 	$("#mail").val(data.mail);
		 	})
	});
	 /*$(function() {
         //Datemask dd/mm/yyyy
         $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
         //Datemask2 mm/dd/yyyy
         $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
         //Money Euro
         $("[data-mask]").inputmask();

         //Date range picker
         $('#reservation').daterangepicker();
         //Date range picker with time picker
         $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
         //Date range as a button
         $('#daterange-btn').daterangepicker(
                 {
                     ranges: {
                         'Today': [moment(), moment()],
                         'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                         'Last 7 Days': [moment().subtract('days', 6), moment()],
                         'Last 30 Days': [moment().subtract('days', 29), moment()],
                         'This Month': [moment().startOf('month'), moment().endOf('month')],
                         'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                     },
                     startDate: moment().subtract('days', 29),
                     endDate: moment()
                 },
         function(start, end) {
             $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
         }
         );

         //iCheck for checkbox and radio inputs
         $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
             checkboxClass: 'icheckbox_minimal',
             radioClass: 'iradio_minimal'
         });
         //Red color scheme for iCheck
         $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
             checkboxClass: 'icheckbox_minimal-red',
             radioClass: 'iradio_minimal-red'
         });
         //Flat red color scheme for iCheck
         $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
             checkboxClass: 'icheckbox_flat-red',
             radioClass: 'iradio_flat-red'
         });

         //Colorpicker
         $(".my-colorpicker1").colorpicker();
         //color picker with addon
         $(".my-colorpicker2").colorpicker();

         //Timepicker
         $(".timepicker").timepicker({
             showInputs: false
         });
     });
	 */
})
	 
