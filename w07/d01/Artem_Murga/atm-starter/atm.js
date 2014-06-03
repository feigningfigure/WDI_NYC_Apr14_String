// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){

	var balance_checking = $("#balance1")
	var checking_balance = 0

	var balance_savings = $("#balance2")
	var savings_balance = 0

	$("#deposit_button_checking").click(function(){
	
		// console.log("foo")
		var input = $("#input");

		// TRYING TO SHOW
		checking_balance = checking_balance + parseInt(input.val());

		balance_checking.html(checking_balance);
	
	});	

	$("#withdraw_button_checking").click(function(){
	
		// console.log("foo")
		var input = $("#input");

		// TRYING TO SHOW
		 
		if (checking_balance > parseInt(input.val())) { 
		checking_balance = checking_balance - parseInt(input.val());
		}
		// else{alert("No way! You are bankrupt, dude!")};
		else
			{if (savings_balance + checking_balance > parseInt(input.val())) {

				//#FIX
				savings_balance - parseInt(input.val())
			} else {
				alert("No way! You are bankrupt, dude!")
			}
		};
		

		balance_checking.html(checking_balance);
	
	});	

	//SAVINGS 


		$("#deposit_button_checking_savings").click(function(){
	
		// console.log("foo")
		var input = $("#input_savings");

		// TRYING TO SHOW
		savings_balance = savings_balance + parseInt(input.val());

		balance_savings.html(savings_balance);
	
	});	

	$("#withdraw_button_checking_savings").click(function(){
	
		// console.log("foo")
		var input = $("#input_savings");

		// TRYING TO SHOW
		 
		if (savings_balance > parseInt(input.val())) { 
		savings_balance = savings_balance - parseInt(input.val());
		}
		else{alert("No way! You are bankrupt, dude!")};
		

		balance_savings.html(savings_balance);
	
	});	



});
  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.


  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.


  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.




// function withdrawFunds(amount, primary, secondary)
// {

// }

// function updateDisplay()
// {

// }
