// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts

$(document).ready(function(){

  var balance1 = 0;
  var balance2 = 0;

  updateDisplay($("#balance1"), balance1);
  updateDisplay($("#balance2"),balance2);

// SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

// Create a click event that is raised when the user clicks on the "checkingDeposit" element.
$("#checking_deposit").click(function(){
  var input = parseInt($("#checking_input").val());
  balance1 = balance1 + input;
  updateDisplay($("#balance1"), balance1);
});

// Create a click event that is raised when the user clicks on the "savingsDeposit" element.
$("#savings_deposit").click(function(){
  var input = parseInt($("#savings_input").val());
  balance2 = balance2 + input;
  updateDisplay($("#balance2"),balance2);
});

//   // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
$("#checking_withdraw").click(function(){
  var input = parseInt($("#checking_input").val());
   withdrawFunds(input, balance1);
  updateDisplay($("#balance1"), $new_balance);
});

// Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
$("#savings_withdraw").click(function(){
  var input = parseInt($("#savings_input").val());
  balance2 = withdrawFunds(input, balance2);
  if (balance2 === 0){
$("#account").css("background_color", "CornflowerBlue");
  }else{
  updateDisplay($("#balance2"), balance2);
}
  });
});


function updateDisplay(element, balance_to_display){
  element.text("$" + balance_to_display);
}

function withdrawFunds(withdrawal_amount, account_balance){
  if(withdrawal_amount > account_balance){
    return account_balance;
  }else{
    account_balance = account_balance - withdrawal_amount
    return account_balance;
  }
}












