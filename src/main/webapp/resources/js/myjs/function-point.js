/**
 * 
 */
  // Declaration global variable	
var uiSimple, uiAverage, uiComplex;
var uoSimple, uoAverage, uoComplex;
var uqSimple, uqAverage, uqComplex;
var ilfSimple, ilfAverage, ilfComplex;
var eifSimple, eifComplex, uiComplex;
var rf1, rf2, rf3, rf4, rf5, rf6, rf7, rf8, rf9, rf10, rf11, rf12, rf13, rf4;

  //  Wizard 1      
  $('#wizard1').smartWizard({transitionEffect:'fade',onFinish:onFinishCallback});
  function onFinishCallback(){
    alert('Finish Called');
  }    
  function previewFpPoint() {
	uiSimple = $('#uiSimple').val();
	uiAverage = $('#uiAverage').val();
	uiComplex = $('#uiComplex').val();
	
	uoSimple = $('#uoSimple').val();
	uoAverage = $('#uoAverage').val();
	uoComplex = $('#uoComplex').val();
	 
	uqSimple = $('#uqSimple').val(); 
	uqAverage = $('#uqAverage').val();
	uqComplex = $('#uqComplex').val();
	
	ilfSimple = $('#ilfSimple').val();
	ilfAverage = $('#ilfAverage').val();
	ilfComplex = $('#ilfComplex').val();
	
	eifSimple = $('#eifSimple').val();
	eifAverage = $('#eifAverage').val();
	eifComplex = $('#eifComplex').val();
	
	rf1 = $('input:radio[name=rf1]').filter(":checked").val()
	rf2 = $('input:radio[name=rf2]').filter(":checked").val()
	rf3 = $('input:radio[name=rf3]').filter(":checked").val()		
	rf4 = $('input:radio[name=rf4]').filter(":checked").val()
	rf5 = $('input:radio[name=rf5]').filter(":checked").val()
	rf6 = $('input:radio[name=rf6]').filter(":checked").val()
	rf7 = $('input:radio[name=rf7]').filter(":checked").val()
	rf8 = $('input:radio[name=rf8]').filter(":checked").val()
	rf9 = $('input:radio[name=rf9]').filter(":checked").val()
	rf10 = $('input:radio[name=rf10]').filter(":checked").val()
	rf11 = $('input:radio[name=rf11]').filter(":checked").val()
	rf12 = $('input:radio[name=rf12]').filter(":checked").val()
	rf13 = $('input:radio[name=rf13]').filter(":checked").val()
	rf14 = $('input:radio[name=rf14]').filter(":checked").val()
	json ={"uiSimple":uiSimple,"uiAverage":uiAverage,"uiComplex":uiComplex, "uoSimple":uoSimple,"uoAverage":uoAverage,"uoComplex":uoComplex, "uqSimple":uqSimple,"uqAverage":uqAverage,"uqComplex":uqComplex, "ilfSimple":ilfSimple,"ilfAverage":ilfAverage,"ilfComplex":ilfComplex, "eifSimple":eifSimple,"eifAverage":eifAverage,"eifComplex":eifComplex, "rf1":rf1,"rf2":rf2,"rf3":rf3,"rf4":rf4,"rf5":rf5,"rf6":rf6,"rf7":rf7, "rf8":rf8,"rf9":rf9,"rf10":rf10,"rf11":rf11,"rf12":rf12,"rf13":rf13,"rf14":rf14};
     
  $.ajax({
	    url: "calc-functionpoint.json",
	    type: 'POST',
	    dataType: 'json',
	    data: JSON.stringify(json),
	    contentType: 'application/json',
	    mimeType: 'application/json',
	    success: function(data) {
	    	alert(data);	    	      
	   	},
	    error: function() {
	    	
	    }
	}); 	          
  }
