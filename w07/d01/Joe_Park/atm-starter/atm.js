// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){
	var currentCheckBalance = $('#balance1');
	var x = parseInt($('#balance1').text().replace('$', ''), 10);

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
  
  $('#chkdeposit').click(function(){

  	var input = $('#transamount');

  	var newBalance = x + parseInt(input.val(), 10);
  	
  	currentCheckBalance.html(('$' + newBalance.toString()));


	});


});



  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.


  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.

	function withdrawFunds(amount, primary, secondary) {

	}

	function updateDisplay() {

	}

	function depositFunds(amount, primary, secondary) {
		// currentChkBalance = currentChkBalance
	}

