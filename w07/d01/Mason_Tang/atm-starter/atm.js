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
      console.log(input);
      balance1 += parseInt(input.val())
      updateCheckingDisplay(balance1);
       console.log(balance1)
    });

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
    $("#savingDepositbutton").click(function(){
      var input = $('#savingAmount');
      console.log(input);
      balance2 += parseInt(input.val())
      updateCheckingDisplay(balance2);
      console.log(balance2)
    });

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
    $("#checkingWithdrawbutton").click(function(){
      var input = $('#checkingAmount');
      console.log(input);
      balance1 -= parseInt(input.val())
      updateCheckingDisplay(balance1);
       console.log(balance1)

    });

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
    $("#savingWithdrawbutton").click(function(){
      var input = $('#savingAmount');
      console.log(input);
      balance2 -= parseInt(input.val())
      updateCheckingDisplay(balance2);
      console.log(balance2)
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
