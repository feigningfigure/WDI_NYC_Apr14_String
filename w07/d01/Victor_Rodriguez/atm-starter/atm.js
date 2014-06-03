// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
$("#checkingDeposit").click(function(){
var checking = $("#balance1");
var input = $("#checkingDepositInput");
checking.html(input.val());
input.val('');

});
  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
$("#savingDeposit").click(function(){
var saving = $("#balance2");
var input = $("#savingDepositInput");
saving.html(input.val());
input.val('');

});

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
$("#checkingWithdraw").click(function(){
var cwithdraw = $("#balance1");
var input = $("#checkingWithdrawInput");
if (input > cwithdraw){
  alert("Insufficient Funds In Account");
}
cwithdraw.html(input.val());

});

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
$("#savingWithdraw").click(function(){
var swithdraw = $("#balance2");
var input = $("#savingWithdrawInput");
if (input > swithdraw){
  alert("Insufficient Funds In Account");
}
swithdraw.html(input.val());

});

//}

//function withdrawFunds(amount, primary, secondary)
// {

// }

// function updateDisplay()
// {

});
