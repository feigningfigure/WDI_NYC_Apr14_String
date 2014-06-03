// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts
$(document).ready(function(){
var checking_balance = $("#balance1")
var savings_balance = $("#balance2")
  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.

  $("#checking_deposit_button").click(function() {
  		var checking_input = parseInt($("#checking_deposit").val());
  		checking_balance + checking_input

  });
	$('input[type="button"][value="Deposit"]')

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
$("#savings_deposit_button").click(function() {
  		var savings_input = parseInt($("#savings_deposit").val());
  		savings_balance = savings_input.val()


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.


  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
});

function withdrawFunds(amount, primary, secondary)
{

}

function updateDisplay()
{

}
