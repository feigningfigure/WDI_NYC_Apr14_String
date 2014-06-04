
// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){
  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick
	console.log("hello world. DOM has been read");


  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
  $("#checking_account .deposit_btn").click(function(){
  	console.log("\n–checking account deposit clicked!");
  	// console.log($(this).parent());
  	// console.log($(this).parent().children());
  	// console.log($(this).siblings());
  	// console.log($(this).siblings('.balance'));
  	// console.log($(this).siblings('.balance').contents());
  	// console.log($(this).siblings('.balance').text());
  	// getBalanceFromButtonByAskingDOMSibling($(this));

  	// console.log($(this).parent());
  	// console.log($(this).parent().children('h1').text());
  	// getAccountNameFromButtonByAskingDOMSiblingH1($(this));

  	executeButtonHit($(this));
  });


  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
  $("#savings_account .deposit_btn").click(function(){
  	console.log("\n-savings account deposit clicked!");
  	executeButtonHit($(this));
  });


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
	$("#checking_account .withdraw_btn").click(function(){
			console.log("\n-checking account withdrawl clicked!");
			executeButtonHit($(this));
	});


  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
  $("#savings_account .withdraw_btn").click(function(){
			console.log("\n-savings account withdrawl clicked!");
			executeButtonHit($(this));
	});

});



function executeButtonHit (button) {

	unpackButton(button)

	function unpackButton(button){
		// Coupled to DOM
		accountName = getAccountNameFromButtonByAskingDOMSiblingH1(button);
		accountBalance = getBalanceFromButtonByAskingDOMSiblingClassBalance(button);
		actionRequested = getActionFromButtonName(button);
		inputAmount = inputAmount(button);
		console.log("accountName= " + accountName);
		console.log("accountBalance= " + accountBalance);
		console.log("actionRequested= " + actionRequested);
		console.log(inputAmount);
		// console.log("inputAmount= " + inputAmount);
	}


	function getBalanceFromButtonByAskingDOMSiblingClassBalance(button){
		return button.siblings('.balance').text();
	}

	function getAccountNameFromButtonByAskingDOMSiblingH1(button){
		return button.siblings('h1').text();
	}

	function getActionFromButtonName(button){
		// return button;
		return button['context']['value'];									//#LEARN - is the right way to do this?
	}

	function inputAmount(button){
		return button.siblings();
	}
}




function transaction(account, accountBalance, actionRequested, inputAmount){
		// newBalance = action(account, ammount);
		// updateDisplay(account, newBalance);
}


function processWithdrawl(account, ammount){
	return "100"
};


function processDeposit(account, ammount){
	return "100"
};
// fucntion processDeposit(){};


function updateDisplay(account, action, amount){
	console.log("running updateDisplay");
	// newBalance = action(account, ammount);

	currentAmmount = account.balance1.contents[0];
	account.balance1.append('Appended');
}
// {

// }
