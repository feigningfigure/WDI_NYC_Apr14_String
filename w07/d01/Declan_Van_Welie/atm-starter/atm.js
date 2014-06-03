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

checking_balance = amount_entered + checking_balance

$("#balance1").text(amount_entered);



});

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
$("#savings_deposit").click(function(){

var input = $("#savings_amount_input").val();

checking_balance = parseInt(input);

$("#balance2").text(checking_balance);



});

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.

$("#checking_withdrawal").click(function(){

var input = $("#check_amount_input").val();

amount_entered = parseInt(input);

// existing_balance = $(this).prevAll('checking_deposit').val()
// balance = parseInt(existing_balance);

total = (checking_balance - amount_entered);

if (total < 0){

return null

} else if (total === 0) {

$("#checkingAccount").css("background-color", "red")

} else {

$("#balance1").text(checking_balance - amount_entered );
$("#checkingAccount").css("background-color", "grey")

}
});



  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.

$("#checking_withdrawal").click(function(){

var input = $("#check_amount_input").val();

amount_entered = parseInt(input);

// existing_balance = $(this).prevAll('checking_deposit').val()
// balance = parseInt(existing_balance);

total = (checking_balance - amount_entered);

if (total < 0){

return null

} else if (total === 0) {

$("#checkingAccount").css("background-color", "red")

} else {

$("#balance1").text(checking_balance - amount_entered );
$("#checkingAccount").css("background-color", "grey")

}

function withdrawFunds(amount, primary, secondary)
{

}

function updateDisplay()
{

}

});
