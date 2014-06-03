// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
  	var checkingBalance = 0
  	var savingsBalance = 0

	 // function checkingBalance() {
	 //  	return $("#balance1");
	 //  }

	 //  function savingsBalance() {
	 //  	return $("#balance2");
	 //  }

	function updateCheckingBalance(jQueryInput) {
	  	checkingBalance += parseInput(jQueryInput);
	  	return checkingBalance;
	}

	function updateSavingsBalance(jQueryInput) {
	  	savingsBalance += parseInput(jQueryInput);
	  	return savingsBalance;
	}	  

	function withdrawFromChecking(jQueryInput) {
	  	checkingBalance -= parseInput(jQueryInput);
	  	return checkingBalance;
	}

	function withdrawFromSavings(jQueryInput) {
	  	savingsBalance -= parseInput(jQueryInput);
	  	return savingsBalance;
	}

	function parseInput(jQueryInput) {
		return parseInt(jQueryInput.val());
	 }	

	function updateDisplay(amount, jQueryDisplay) {
		jQueryDisplay.text("$" + amount);
	}	  


	// The anonymous passed into .click is a callback function
	$("#checkingDepositButton").click(function(){
		
		
		$(".balance").css("background-color", "#E3E3E3");
		var input = $("#checkingInput");
		var display = $("#balance1");
		console.log(input.val());
		var amount = updateCheckingBalance(input);
		updateDisplay(amount, display);

		// Clears the input form
		input.val('');
	});

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.

	$("#savingsDepositButton").click(function(){
		
		$(".balance").css("background-color", "#E3E3E3");
		var input = $("#savingsInput");
		var display = $("#balance2");
		console.log(input.val());
		var amount = updateSavingsBalance(input);
		updateDisplay(amount, display);

		// Clears the input form
		input.val('');
	});

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.

	$("#checkingWithdrawalButton").click(function(){
		
		var input = $("#checkingInput");
		var displayChecking = $("#balance1");
		var displaySavings = $("#balance2");
		var change = parseInput(input);

		if (change > checkingBalance + savingsBalance) {
			$(".balance").css("background-color", "red");
		} else {
			if (change > checkingBalance) {
				$(".balance").css("background-color", "#E3E3E3");
				$("#savingsAccount .balance").css("background-color", "red");				
				var overDraft = change - checkingBalance; 
				checkingBalance = 0;
				savingsBalance -= overDraft;
				updateDisplay(checkingBalance, displayChecking);
				updateDisplay(savingsBalance, displaySavings);
			} else {
				$(".balance").css("background-color", "#E3E3E3");
				var amount = withdrawFromSavings(input);
				updateDisplay(amount, displaySavings);
			}
		}

		// Clears the input form
		input.val('');
	});

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.

	$("#savingsWithdrawalButton").click(function(){
		

		var input = $("#savingsInput");
		var displayChecking = $("#balance1");
		var displaySavings = $("#balance2");
		var change = parseInput(input);

		if (change > checkingBalance + savingsBalance) {
			$(".balance").css("background-color", "red");
		} else {
			if (change > savingsBalance) {
				$(".balance").css("background-color", "#E3E3E3");
				$("#checkingAccount .balance").css("background-color", "red");				
				var overDraft = change - savingsBalance; 
				savingsBalance = 0;
				checkingBalance -= overDraft;
				updateDisplay(checkingBalance, displayChecking);
				updateDisplay(savingsBalance, displaySavings);
			} else {
				$(".balance").css("background-color", "#E3E3E3");
				var amount = withdrawFromSavings(input);
				updateDisplay(amount, displaySavings);
			}
		}

		// Clears the input form
		input.val('');
	});


});

