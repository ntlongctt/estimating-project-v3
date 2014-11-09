/**
 * @author  
 */
	  // Declaration global variable
	  var easy, medium, difficult, simple, average, complex, distributed, performance, endUserefficiency, complexProcessing;
	  var reusableCode, easeofInstallation, easeofUse, portable, easeofChange, concurrentUse, accessforThirdParties, specialSecurity;
	  var trainingNeeds, familiarwithDevelopmentProcess, applicationExperience, objectOrientedExperience, leadAnalystCapability;
	  var motivation, stableRequirements, parttimeStaff, difficulProgrammingLanguage;
	  var json;
$(document).ready(function(){  
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
  		
  		json ={"easy" :easy, "medium" :medium, "difficult" :difficult, "simple" :simple, "average" :average, "complex" :complex , "distributed" :distributed, "performance" :performance, "endUserefficiency" :endUserefficiency,"complexProcessing" :complexProcessing,"reusableCode" :reusableCode, "easeofInstallation" :easeofInstallation, "easeofUse" :easeofUse, "portable" :portable,"easeofChange" :easeofChange, "concurrentUse" :concurrentUse, "accessforThirdParties" :accessforThirdParties, "specialSecurity" :specialSecurity,"trainingNeeds" :trainingNeeds, "familiarwithDevelopmentProcess" :familiarwithDevelopmentProcess,"applicationExperience" :applicationExperience, "objectOrientedExperience" :objectOrientedExperience, "leadAnalystCapability" :leadAnalystCapability, "motivation" :motivation,"stableRequirements" :stableRequirements, "parttimeStaff" :parttimeStaff, "difficulProgrammingLanguage" :difficulProgrammingLanguage };
      }
      
      // Preview Result
      $("#calc-usecasepoint").on('submit', function(e){
    	  getValue();
		
  	      e.preventDefault();	      
 	      $.ajax({
 	    	    url: "${pageContext.request.contextPath}/calc-usecasepoint.json",
 	    	    type: 'POST',
 	    	    dataType: 'json',
 	    	    data: JSON.stringify(json),
 	    	    contentType: 'application/json',
 	    	    mimeType: 'application/json',
 	    	    success: function(data) {
 	    	    	alert(data);	    	      
 	    	   	},
 	    	    error: function(e) {
 	    	    	
 	    	    }
 	    	}); 	     
       		});    
         });