// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts

var balance1 = 0
var balance2 = 0
var checkingAmount = $('checkingAmount')
var savingAmount = $('savingAmount')

$(document).ready(function(){


  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.

    $('#checkingDepositbutton').click(function(){
      var input = $('#checkingAmount');
      balance1 += parseInt(input.val())
      updateCheckingDisplay(balance1);

    });

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
    $("#savingDepositbutton").click(function(){
      var input = $('#savingAmount');

      balance2 += parseInt(input.val())
      updateSavingsDisplay(balance2);

    });

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
    $("#checkingWithdrawbutton").click(function(){
      var input = $('#checkingAmount');
      if(balance1 >= input.val()){
      balance1 -= parseInt(input.val())
      updateCheckingDisplay(balance1);
    } else {}


    });

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
    $("#savingWithdrawbutton").click(function(){
      var input = $('#savingAmount');
      if(balance2 >= input.val()){
      balance2 -= parseInt(input.val())
      updateSavingsDisplay(balance2);
      } else {}

    });

});

function withdrawFunds(amount, primary, secondary){

}

function updateCheckingDisplay(){
  $("#balance1").html(balance1);
}

function updateSavingsDisplay(){
  $("#balance2").html(balance2);
}
