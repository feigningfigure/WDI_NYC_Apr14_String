// STILL REBOUNDING FROM WEEKEND ILLNESS. I WILL SUBMIT A COMPLETED VERSION THIS WEEK. 


// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts

var balance2 = 0;
var balance1 = 0;
var checkingInput = $('checkingInput')
var savingsInput = $('savingInput')

$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.


$('#checkingDeposit').click(function(){
      var input = $('#checkingInput');
      balance1 += parseInt(input.val());
      input.val('');
      updateCheckingDisplay(balance1)
    })

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
$("#savingsDeposit").click(function(){
   var input = $("#savingsInput");
    balance2 += parseInt(input.val());
    updateSavingsDisplay(balance2);
    input.val('')
   }

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
$("#checkingWithdraw").click(function(){
    var input = $("#checkingInput");
    balance1 -= parseInt(input.val());
    input.val('')
   }

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
$("#savingsWithdraw").click(function(){
    var input = $("#savingsInput");
    balance2 -= parseInt(input.val());
    input.val('')
   }

};

function withdrawFunds(amount, primary, secondary)
{

}

function updateCheckingDisplay() {
  $("#balance1").html(balance1);
}

function updateSavingsDisplay() {
  $("#balance2").html(balance2);
}


