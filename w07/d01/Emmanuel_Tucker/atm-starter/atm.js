// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){

 var checkingBalance = 0;
  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick
$("#add_deposit_button").click(function(){


var input = $("#checking_input");


     checkingBalance = checkingBalance + parseInt($("#checking_input").val());

     // console.log(checkingBalance)

     $("#balance1").html("$"+ checkingBalance);


});


  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
$("#add_withdraw_button").click(function(){


   var input = $("#checking_input")

     checkingBalance = checkingBalance + parseInt($("#checking_input").val());

     // console.log(checkingBalance)

     $("#balance1").html("$" - checkingBalance);



});
  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.


  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.


});

function withdrawFunds(amount, primary, secondary)
{

}

function updateDisplay()
{

}
