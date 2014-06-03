// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts

$(document).ready(function(){
  //Checking Deposit balance
  var checking_balance = $("#checkingAccount > div");
  var checking_input = $("#checkingAccount > input:text");
  var checking_sum = 0;

  //Deposit button
  $($("#checkingAccount > input:button:first")).click(function(){
  //Checking Deposit input number field
    checking_sum = checking_sum + parseFloat(checking_input.val());
    checking_balance.html(checking_sum);
    checking_balance.val("");
    checking_input.val("");
  });
});

function updateDisplay()
{
// checking_sum
}

// //Checking Withdrawal button
// $("#checkingAccount > input:button:last")

// //SAVINGS Withdrawal button
// $("#savingsAccount > input:button:last")

// //SAVINGS Deposit button
// $("#savingsAccount > input:button:first")

// //SAVINGS Deposit field
// $("#savingsAccount > input:text")

// //SAVINGS Deposit
// $("#savingsAccount > div")


// function withdrawFunds(amount, primary, secondary)
// {

// }



// SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

// Create a click event that is raised when the user clicks on the "checkingDeposit" element.

// Create a click event that is raised when the user clicks on the "savingsDeposit" element.


// Create a click event that is raised when the user clicks on the "checkingWithdraw" element.


// Create a click event that is raised when the user clicks on the "savingsWithdraw" element.

// var sum = 0;
// $("checking_input").each function(){
  //   sum += Number(checking_input.val());
// }






