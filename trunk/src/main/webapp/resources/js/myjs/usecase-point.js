/**
 * @author  
 */
  // Declaration global variable
  var easy, medium, difficult, simple, average, complex, distributed, performance, endUserefficiency, complexProcessing;
  var reusableCode, easeofInstallation, easeofUse, portable, easeofChange, concurrentUse, accessforThirdParties, specialSecurity;
  var trainingNeeds, familiarwithDevelopmentProcess, applicationExperience, objectOrientedExperience, leadAnalystCapability;
  var motivation, stableRequirements, parttimeStaff, difficulProgrammingLanguage;
  var projectID;
  var json;
  var projectID;
  
  // Wizard 
  $('#wizard1').smartWizard({transitionEffect:'fade',onFinish:onFinishCallback});
  
  // Finish
  function onFinishCallback(){
    alert('Finish Called');
  }    
  
  // Get value from input
  function getValue() {

	easy = $('#easy').val();
	medium = $('#medium').val();
	difficult = $('#difficult').val();
	
	simple = $('#simple').val();
	average = $('#average').val();
	complex = $('#complex').val();
		 
	distributed = $('#distributed').val();
	performance = $('#performance').val();
	endUserefficiency = $('#endUserefficiency').val();
	complexProcessing = $('#complexProcessing').val();
	reusableCode = $('#reusableCode').val();
	easeofInstallation = $('#easeofInstallation').val();
	easeofUse = $('#easeofUse').val();
	portable = $('#portable').val();
	easeofChange = $('#easeofChange').val();
	concurrentUse = $('#concurrentUse').val();
	accessforThirdParties = $('#accessforThirdParties').val();
	specialSecurity = $('#specialSecurity').val();
	trainingNeeds = $('#trainingNeeds').val();
		 		
	familiarwithDevelopmentProcess = $('#familiarwithDevelopmentProcess').val();
	applicationExperience = $('#applicationExperience').val();
	objectOrientedExperience = $('#objectOrientedExperience').val();
	leadAnalystCapability = $('#leadAnalystCapability').val();
	motivation = $('#motivation').val();
	stableRequirements = $('#stableRequirements').val();
	parttimeStaff = $('#txtPart-time-Staff').val();
	difficulProgrammingLanguage = $('#difficulProgrammingLanguage').val(); 

	projectID= $("#selectProject option:selected").val();
	
	json ={"easy" :easy, "medium" :medium, "difficult" :difficult, "simple" :simple, "average" :average, "complex" :complex , "distributed" :distributed, "performance" :performance, "endUserefficiency" :endUserefficiency,"complexProcessing" :complexProcessing,"reusableCode" :reusableCode, "easeofInstallation" :easeofInstallation, "easeofUse" :easeofUse, "portable" :portable,"easeofChange" :easeofChange, "concurrentUse" :concurrentUse, "accessforThirdParties" :accessforThirdParties, "specialSecurity" :specialSecurity,"trainingNeeds" :trainingNeeds, "familiarwithDevelopmentProcess" :familiarwithDevelopmentProcess,"applicationExperience" :applicationExperience, "objectOrientedExperience" :objectOrientedExperience, "leadAnalystCapability" :leadAnalystCapability, "motivation" :motivation,"stableRequirements" :stableRequirements, "parttimeStaff" :parttimeStaff, "difficulProgrammingLanguage" :difficulProgrammingLanguage, "projectID" :projectID };

	projectID= $("#selectProject option:selected").val();
	json ={"easy" :easy, "medium" :medium, "difficult" :difficult, "simple" :simple, "average" :average, "complex" :complex , "distributed" :distributed, "performance" :performance, "endUserefficiency" :endUserefficiency,"complexProcessing" :complexProcessing,"reusableCode" :reusableCode, "easeofInstallation" :easeofInstallation, "easeofUse" :easeofUse, "portable" :portable,"easeofChange" :easeofChange, "concurrentUse" :concurrentUse, "accessforThirdParties" :accessforThirdParties, "specialSecurity" :specialSecurity,"trainingNeeds" :trainingNeeds, "familiarwithDevelopmentProcess" :familiarwithDevelopmentProcess,"applicationExperience" :applicationExperience, "objectOrientedExperience" :objectOrientedExperience, "leadAnalystCapability" :leadAnalystCapability, "motivation" :motivation,"stableRequirements" :stableRequirements, "parttimeStaff" :parttimeStaff, "difficulProgrammingLanguage" :difficulProgrammingLanguage, "projectID" :projectID };
  }
  
// Preview Result
  function PreviewUsecasePoint(){
  getValue();

  $.ajax({
	    url: "calc-usecasepoint.json",
	    type: 'POST',
	    dataType: 'json',
	    data: JSON.stringify(json),
	    contentType: 'application/json',
	    mimeType: 'application/json',
	    success: function(data) {
	    	//alert(data.totalUCP);
	    	document.getElementById("ucw").innerHTML = data.wuc;
	    	document.getElementById("uaw").innerHTML = data.was;
	    	document.getElementById("uucp").innerHTML = data.uucp;
	    	document.getElementById("tcf").innerHTML = data.tcf;
	    	document.getElementById("efc").innerHTML = data.efc;
	    	document.getElementById("ucp").innerHTML = data.totalUCP;
	    	document.getElementById("minimun_hours").innerHTML = data.totalUCP*document.getElementById("minimun_hours_input").value;
	    	document.getElementById("maximun_hours").innerHTML = data.totalUCP*document.getElementById("maximun_hours_input").value;
	    	document.getElementById("devired_hours").innerHTML = data.totalUCP*document.getElementById("devired_hours_input").value;
	   	},
	    error: function() {    	
	    }
	}); 	     
	}
  
  function saveUcPoint(){
	  alert("vao");
	  getValue();

	  $.ajax({
		    url: "save-usecasepoint.json",
		    type: 'POST',
		    dataType: 'json',
		    data: JSON.stringify(json),
		    contentType: 'application/json',
		    mimeType: 'application/json',
		    success: function(data) {
		    	//alert(data.totalUCP);
		    	document.getElementById("ucw").innerHTML = data.wuc;
		    	document.getElementById("uaw").innerHTML = data.was;
		    	document.getElementById("uucp").innerHTML = data.uucp;
		    	document.getElementById("tcf").innerHTML = data.tcf;
		    	document.getElementById("efc").innerHTML = data.efc;
		    	document.getElementById("ucp").innerHTML = data.totalUCP;
		    	document.getElementById("minimun_hours").innerHTML = data.totalUCP*document.getElementById("minimun_hours_input").value;
		    	document.getElementById("maximun_hours").innerHTML = data.totalUCP*document.getElementById("maximun_hours_input").value;
		    	document.getElementById("devired_hours").innerHTML = data.totalUCP*document.getElementById("devired_hours_input").value;
		    	alert("Save successful!")
		   	},
		    error: function() {   
		    	alert("Error! Please try again.")
		    }
		}); 	     
  }
