// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts

$(document).ready(function(){
	var currentCheckBalance = $('#balance1');
	var currentSavingBalance = $('#balance2');
  
  $('#checkDeposit').on('click', function(){
		var balanceInt = balanceToInteger(currentCheckBalance);

  	var input = $('#transAmount');
  	
  	updateDisplay(depositFunds(balanceInt, input));
  	
  	input.val('');
	});

	$('#checkWithdrawl').on('click', function(){
		var balanceInt = balanceToInteger(currentCheckBalance);

  	var input = $('#transAmount');
  	
  	var result = withdrawFunds(balanceInt, input);

  	if (result !== false){
  	  updateDisplay(result);	
  	}

  	input.val('');
	});

	$('#savingDeposit').on('click', function(){
		var balanceInt = balanceToInteger(currentSavingBalance);

  	var input = $('#transAmount2');
  	
  	updateDisplaySaving(depositFunds(balanceInt, input));
  	
  	input.val('');
	});

	$('#savingWithdrawl').on('click', function(){
		var balanceInt = balanceToInteger(currentSavingBalance);

  	var input = $('#transAmount2');

  	var result = withdrawFunds(balanceInt, input);

  	if (result !== false){
  	  updateDisplaySaving(result);	
  	}
  	
  	input.val('');
	});

	function updateDisplay(number) {
		currentCheckBalance.html(('$' + number.toString()));
	}

	function updateDisplaySaving(number) {
		currentSavingBalance.html(('$' + number.toString()));
	}

	function withdrawFunds(amount, primary, secondary) {
		var i = parseInt(primary.val(), 10);
		if (amount > i){ 
			return amount - i
		} else {
			alert("Insufficient Funds!");
			return false;
		}
	}

	function depositFunds(amount, primary, secondary) {
		return amount + parseInt(primary.val(), 10);
	}

	function balanceToInteger(string){
		return parseInt(string.text().replace('$', ''), 10);
	}

});







  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.


  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.






