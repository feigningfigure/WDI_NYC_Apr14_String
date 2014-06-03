// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts


  var balance1 = 0;
  var balance2 = 0;

$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick


  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
  var checkingDeposit = $("#checking_deposit");
    $("#check_deposit_button").click(function(){
      var input = $("#chk_input");
      var amount = parseInt(input.val());
      var newBalance = depositFunds(amount, balance1);
      updateCheckingDisplay(newBalance);
      input.val('');
    })
  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
  var savingsDeposit = $("#savings_deposit");
  $("#sav_deposit_btn").click(function(){
      var input = $("#sav_input");
      var amount = parseInt(input.val());
      var newBalance = depositFunds(amount, balance2);
      updateCheckingDisplay(newBalance);
      input.val('');
    })
  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
  var checkingWithdraw = $("#checking_withdraw");
  $("#chk_withdraw_btn").click(function(){
      var input = $("#chk_input");
      var amount = parseInt(input.val());
      var newBalance = withdrawFunds(amount, balance1);
      updateCheckingDisplay(newBalance);
      input.val('');
  })
  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
  var savingsWithdraw = $("#savings_withdraw");
  $("#sav_withdraw_btn").click(function(){
      var input = $("#sav_input");
      var amount = parseInt(input.val());
      var newBalance = withdrawFunds(amount, balance2);
      updateCheckingDisplay(newBalance);
      input.val('');
  })

})

function withdrawFunds(amount, balance1) {
  var totalBalance = balance1 + balance2;
  if (amount > totalBalance) {
    return null;
  } else if (amount > balance1) {
    var overdraft = amount - balance1;
    balance2 -= overdraft;
    return balance1 = 0;
  } else {
    return balance1 -= amount;
  }
}

function depositFunds(amount, balance) {
  return balance += amount;
}


function updateCheckingDisplay(checking_balance) {
  $("#balance1").html('$' + checking_balance);
}

function updateSavingsDisplay(savings_balance) {
  $("#balance2").html('$' + savings_balance);
}
