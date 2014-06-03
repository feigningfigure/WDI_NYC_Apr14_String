// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts

$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick


  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.

  var checkingBalance = $("#balance1")

  // The anonymous function passed into the click function is a callback
  $("#checking_deposit_button").click(function(){
    // This is the value from the input field
    var input = $("#checking_input")
    // Here we add the amount to the checking account 'balance1'
    checkingBalance = input + checkingBalance;
    // Clears the input form
    input.val('');
  })
  updateBalanceDisplay()

});




  function updateBalanceDisplay(number){
    checkingBalance.html(( '$' + number.toString()));
  }

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
  function withdrawFunds(amount, primary, secondary){

  }

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.

  function depositFunds(amount, primary, secondary){

  }
  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.


}



// $('#checkDeposit').on('click', function(){
// var balanceInt = balanceToInteger(currentCheckBalance);

//   var input = $('#transAmount');

//   updateDisplay(depositFunds(balanceInt, input));

//   input.val('');
// });
