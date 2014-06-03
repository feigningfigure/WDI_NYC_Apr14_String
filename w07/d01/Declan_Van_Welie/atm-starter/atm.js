// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts

var checking_balance = 0;
var savings_balance = 0;


$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.

$("#checking_deposit").click(function(){

var input = $("#check_amount_input").val();

amount_entered = parseInt(input);



$("#balance1").text(amount_entered);



});

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
$("#savings_deposit").click(function(){

var input = $("#savings_amount_input").val();

amount_entered = parseInt(input);



$("#balance2").text(amount_entered);



});

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.

$("#checking_withdrawal").click(function(){

var input = $("#check_amount_input").val();

amount_entered = parseInt(input);



$("#balance1").text(amount_entered);



});



  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.



function withdrawFunds(amount, primary, secondary)
{

}

function updateDisplay()
{

}

});
