/**
 * @author  
 */
  // Declaration global variable
  var easy, medium, difficult, simple, average, complex, distributed, performance, endUserefficiency, complexProcessing;
  var reusableCode, easeofInstallation, easeofUse, portable, easeofChange, concurrentUse, accessforThirdParties, specialSecurity;
  var trainingNeeds, familiarwithDevelopmentProcess, applicationExperience, objectOrientedExperience, leadAnalystCapability;
  var motivation, stableRequirements, parttimeStaff, difficulProgrammingLanguage;
  var projectID;
  var hour, cost;
  var json;
  
  // Wizard 
  $('#wizard1').smartWizard({transitionEffect:'fade',onFinish:onFinishCallback});
  
  // Finish
  function onFinishCallback(){
	  $('#exampleModal').modal('show'); 
  }    
  
  // Get value from input
  function getValue(flag) {

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
	hour = $("#maximun_hours_input").val();
	cost = $("#payment").val();
	if(flag == 2){
		hour = 	document.getElementById("maximun_hours").value;
		cost = document.getElementById("cost").value;
	}
	else{
		hour = 0;
		cost = 0;
	}
	
	json ={"easy" :easy, "medium" :medium, "difficult" :difficult,
		"simple" :simple, "average" :average, "complex" :complex ,
		"distributed" :distributed, "performance" :performance, "endUserefficiency" :endUserefficiency,
		"complexProcessing" :complexProcessing,"reusableCode" :reusableCode, "easeofInstallation" :easeofInstallation,
		"easeofUse" :easeofUse, "portable" :portable,"easeofChange" :easeofChange, "concurrentUse" :concurrentUse,
		"accessforThirdParties" :accessforThirdParties, "specialSecurity" :specialSecurity,"trainingNeeds" :trainingNeeds,
		"familiarwithDevelopmentProcess" :familiarwithDevelopmentProcess,"applicationExperience" :applicationExperience,
		"objectOrientedExperience" :objectOrientedExperience, "leadAnalystCapability" :leadAnalystCapability, "motivation" :motivation,
		"stableRequirements" :stableRequirements, "parttimeStaff" :parttimeStaff, "difficulProgrammingLanguage" :difficulProgrammingLanguage,
		"hour":hour, "cost":cost,
		"projectID" :projectID };

	projectID= $("#selectProject option:selected").val();
  }
  
// Preview Result
  function PreviewUsecasePoint(){
  getValue(1);
  $.ajax({
	    url: "calc-usecasepoint.json",
	    type: 'POST',
	    dataType: 'json',
	    data: JSON.stringify(json),
	    contentType: 'application/json',
	    mimeType: 'application/json',
	    success: function(data) {
	    //	alert("gia tri "+ data.wuc);
	    	document.getElementById("ucw").innerHTML = data.wuc;
	    	document.getElementById("uaw").innerHTML = data.was;
	    	document.getElementById("uucp").innerHTML = data.wuc + data.was;
	    	document.getElementById("tcf").innerHTML = data.tcf;
	    	document.getElementById("efc").innerHTML = data.efc;
	    	document.getElementById("ucp").innerHTML = data.totalUCP;
	    	var num = CurrencyFormat(data.totalUCP * document.getElementById("maximun_hours_input").value
	   	    	 * document.getElementById("payment").value);
	    	document.getElementById("cost").innerHTML = num
	    	
	    	document.getElementById("minimun_hours").innerHTML = data.totalUCP*document.getElementById("minimun_hours_input").value;
	    	document.getElementById("maximun_hours").innerHTML = data.totalUCP*document.getElementById("maximun_hours_input").value;
	   	},
	    error: function() {    	
	    }
	}); 	     
	}
  
  function CurrencyFormat(number)
  {
     var decimalplaces = 2;
     var decimalcharacter = ".";
     var thousandseparater = ",";
     number = parseFloat(number);
     var sign = number < 0 ? "-" : "";
     var formatted = new String(number.toFixed(decimalplaces));
     if( decimalcharacter.length && decimalcharacter != "." ) { formatted = formatted.replace(/\./,decimalcharacter); }
     var integer = "";
     var fraction = "";
     var strnumber = new String(formatted);
     var dotpos = decimalcharacter.length ? strnumber.indexOf(decimalcharacter) : -1;
     if( dotpos > -1 )
     {
        if( dotpos ) { integer = strnumber.substr(0,dotpos); }
        fraction = strnumber.substr(dotpos+1);
     }
     else { integer = strnumber; }
     if( integer ) { integer = String(Math.abs(integer)); }
     while( fraction.length < decimalplaces ) { fraction += "0"; }
     temparray = new Array();
     while( integer.length > 3 )
     {
        temparray.unshift(integer.substr(-3));
        integer = integer.substr(0,integer.length-3);
     }
     temparray.unshift(integer);
     integer = temparray.join(thousandseparater);
     return sign + integer + decimalcharacter + fraction;
  }
  
//inputmasak======================================
  var patterns = ["n3"];
  var options;
  var masks = [];
  var mask;
  options = {
          $el: $("#distributed"),
          mask: patterns[0],
      }
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#performance"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#endUserefficiency"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#complexProcessing"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#reusableCode"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#easeofInstallation"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#easeofUse"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#portable"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#easeofChange"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#concurrentUse"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#specialSecurity"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#accessforThirdParties"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#trainingNeeds"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#simple"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#average"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#complex"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#easy"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#medium"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  options = {
          $el: $("#difficult"),
          mask: patterns[0],
      }   
  mask = Mask.newMask(options);
  masks.push(mask);
  
  //==============================================
  function saveUcPoint(){
	//  alert("vao");
	  getValue();
	  
	//  alert("vao");
	  //getValue(2);
	  
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
		hour = 	document.getElementById("maximun_hours_input").value;
		cost = document.getElementById("payment").value;
		
		json ={"easy" :easy, "medium" :medium, "difficult" :difficult,
			"simple" :simple, "average" :average, "complex" :complex ,
			"distributed" :distributed, "performance" :performance, "endUserefficiency" :endUserefficiency,
			"complexProcessing" :complexProcessing,"reusableCode" :reusableCode, "easeofInstallation" :easeofInstallation,
			"easeofUse" :easeofUse, "portable" :portable,"easeofChange" :easeofChange, "concurrentUse" :concurrentUse,
			"accessforThirdParties" :accessforThirdParties, "specialSecurity" :specialSecurity,"trainingNeeds" :trainingNeeds,
			"familiarwithDevelopmentProcess" :familiarwithDevelopmentProcess,"applicationExperience" :applicationExperience,
			"objectOrientedExperience" :objectOrientedExperience, "leadAnalystCapability" :leadAnalystCapability, "motivation" :motivation,
			"stableRequirements" :stableRequirements, "parttimeStaff" :parttimeStaff, "difficulProgrammingLanguage" :difficulProgrammingLanguage,
			"hour":hour, "cost":cost,
			"projectID" :projectID };

		projectID= $("#selectProject option:selected").val();
		

	  $.ajax({
		    url: "save-usecasepoint.json",
		    type: 'POST',
		    dataType: 'json',
		    data: JSON.stringify(json),
		    contentType: 'application/json',
		    mimeType: 'application/json',
		    success: function(data) {
		    	alert("Save successful!")
		   	},
		    error: function() {   
		    	alert("Error! Please try again.")
		    }
		}); 	     
  }

  

 
