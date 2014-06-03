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

  	balanceColor();
  	
  	input.val('');
	});

	$('#checkWithdrawl').on('click', function(){
		var balanceInt = balanceToInteger(currentCheckBalance);
		var backUpSaving = balanceToInteger(currentSavingBalance);
  	var input = $('#transAmount');
  	
  	var result = withdrawFunds(balanceInt, input, backUpSaving);

  	if (result !== false){
  	  updateDisplay(result);	
  	}

  	balanceColor();

  	input.val('');
	});

	$('#savingDeposit').on('click', function(){
		var balanceInt = balanceToInteger(currentSavingBalance);

  	var input = $('#transAmount2');
  	
  	updateDisplaySaving(depositFunds(balanceInt, input));

  	balanceColor();
  	
  	input.val('');
	});

	$('#savingWithdrawl').on('click', function(){
		var balanceInt = balanceToInteger(currentSavingBalance);

  	var input = $('#transAmount2');

  	var result = withdrawFunds(balanceInt, input);

  	if (result !== false){
  	  updateDisplaySaving(result);	
  	}

  	balanceColor();
  	
  	input.val('');
	});

	function updateDisplay(number) {
		currentCheckBalance.html(('$' + number.toString()));
	}

	function updateDisplaySaving(number) {
		currentSavingBalance.html(('$' + number.toString()));
	}

	function withdrawFunds(primary, amount, secondary) {
		var i = parseInt(amount.val(), 10);
		if (primary >= i){ 
			return primary - i
		} else if ((primary < i) && (i <= primary + secondary)) {
			remainder = i - primary
			secondary = secondary - remainder
			primary = 0;
			updateDisplaySaving(secondary);
			return primary;
		} else if ((primary = 0) && (i <= secondary)) {
			secondary -= i
			updateDisplaySaving(secondary);
			return primary = 0;
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

	function balanceColor(){
		if (balanceToInteger(currentCheckBalance) === 0) {
			$('#balance1').css('background-color', '#c0392b');
		} else {
			$('#balance1').css('background-color', '#ecf0f1');
		}

		if (balanceToInteger(currentSavingBalance) === 0) {
			$('#balance2').css('background-color', '#c0392b');
		} else {
			$('#balance2').css('background-color', '#ecf0f1');
		}
	}
		balanceColor();
});




  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.


  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.


