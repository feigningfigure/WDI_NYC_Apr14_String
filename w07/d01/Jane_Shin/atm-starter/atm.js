// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.

  var checkRaw = $("#balance1");
  var balance = Number(checkRaw.text().substr(1));
  var checkAmount = $("#checking_amount");
  // var checkValue = Number(checkAmount.val());

  $("#make_checking_deposit").on('click', function() {
		balance += Number(checkAmount.val());
  	updateDisplay(checkRaw, balance);
  });

  // changed order of checking withdraw

 $("#make_checking_withdrawal").on('click', function() {

 	// if (balance === 0)

  
	 	if (balance - checkAmount.val() >= 0) {
	  	withdrawFunds(checkRaw, checkAmount);	
			balance -= checkAmount.val();
	  	updateDisplay(checkRaw, balance);
	 	} else {
	 		alert ("You don't have enough funds to withdraw.");
	 	}



  });

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.

  var saveRaw = $("#balance2");  

  $("#make_saving_deposit").on('click', function() {

  	var depositAmount = $("#saving_amount");
  	var balance = Number(saveRaw.text().substr(1));	
		
		balance += Number(depositAmount.val());

  	updateDisplay(saveRaw, balance);

  });

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
});

function withdrawFunds(amount, primary, secondary) {
	var balance = Number(amount.text().substr(1));	
	balance -= Number(primary.val());
	// return balance;
}

function updateDisplay(raw_dollars, balance) {
	// var balance = Number(raw_dollars.text().substr(1));	
	// balance += Number(depositAmount.val());
  raw_dollars.text('$' + balance);
};

